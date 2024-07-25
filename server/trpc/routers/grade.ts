import getUserDataFromSchoolId from '~/utils/getUserDataFromSchoolId';
import { authedProcedure, router } from '../trpc';
import { z } from 'zod';
import { GenericError, SupabaseError } from '~/types/error';
import { Database } from '~/types/supabase';
import createStudentIfNotExist from '~/utils/createStudentIfNotExist';

export const gradeRouter = router({
  get: authedProcedure
    .input(
      z
        .object({
          studentId: z.number().optional()
        })
        .optional()
    )
    .query(async ({ ctx, input }): Promise<GenericError<Database['public']['Tables']['grade']['Row'][], string>> => {
      if (input?.studentId && ctx.user!.role === 'STUDENT' && ctx.user!.school_id !== input?.studentId)
        return {
          error: true,
          value: 'CANT_VIEW_OTHER_GRADE'
        };

      let userId = ctx.supabaseSession?.user.id;

      if (!userId && !input?.studentId)
        return {
          error: true,
          value: 'INVALID_QUERY'
        };

      if (input?.studentId) {
        const { error, value } = await getUserDataFromSchoolId(ctx.supabaseServiceRole, input.studentId);

        // TODO: Handle error here
        if (error)
          return {
            error: true,
            value: 'UNKNOWN_ERROR'
          };

        userId = value.id;
      }

      // Hint to type checker
      userId = userId!;

      return {
        error: false,
        value: (await ctx.supabaseServiceRole.from('grade').select('*').eq('user_id', userId)).data!
      };
    }),

  modify: authedProcedure
    .input(
      z.object({
        studentId: z.number(),
        grades: z.array(
          z.object({
            subject: z.enum(['MATH', 'BIOLOGY', 'ENGLISH', 'PHYSICS', 'CHEMISTRY', 'HISTORY', 'ECONOMICS']),
            grade: z.number().min(0).max(100)
          })
        )
      })
    )
    .query(async ({ ctx, input }) => {
      if (ctx.user!.role === 'STUDENT')
        return {
          error: true,
          value: 'CANT_MODIFY_GRADE'
        };

      const data = await createStudentIfNotExist(ctx.supabaseServiceRole, input.studentId);

      for (const grade of input.grades) {
        const rowExistsResult = (
          await ctx.supabaseServiceRole
            .from('grade')
            .select('', { count: 'exact' })
            .match({ user_id: data.userId, subject: grade.subject })
            .limit(1)
        ).count;

        const rowExists = rowExistsResult != null && rowExistsResult > 0;

        // If exist, update, else insert

        if (!rowExists) {
          await ctx.supabaseServiceRole.from('grade').insert({
            user_id: data.userId,
            subject: grade.subject,
            grade: grade.grade
          });
        } else {
          await ctx.supabaseServiceRole
            .from('grade')
            .update({
              grade: grade.grade
            })
            .match({ user_id: data.userId, subject: grade.subject });
        }
      }

      return {
        error: false
      };
    })
});

// export type definition of API
export type GradeRouter = typeof gradeRouter;
