import getUserDataFromSchoolId from '~/utils/getUserDataFromSchoolId';
import { authedProcedure, router } from '../trpc';
import { z } from 'zod';
import getUserDataFromAccountId from '~/utils/getUserDataFromAccountId';
import { GenericError } from '~/types/error';
import { Database } from '~/types/supabase';
import isStudentExist from '~/utils/isStudentExist';

export const userRouter = router({
  get: authedProcedure
    .input(
      z
        .object({
          studentId: z.number().optional()
        })
        .optional()
    )
    .query(async ({ ctx, input }): Promise<GenericError<Database['public']['Tables']['user_data']['Row'], string>> => {
      if (input?.studentId && ctx.user!.role === 'STUDENT' && ctx.user!.school_id !== input?.studentId)
        return {
          error: true,
          value: 'CANT_VIEW_OTHER_INFO'
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

      const { error, value } = await getUserDataFromAccountId(ctx.supabaseServiceRole, userId);

      // TODO: Handle error here
      if (error)
        return {
          error: true,
          value: 'UNKNOWN ERROR'
        };

      return {
        error: false,
        value
      };
    }),

  exists: authedProcedure
    .input(z.number())
    .query(async ({ ctx, input }): Promise<boolean> => await isStudentExist(ctx.supabaseServiceRole, input))
});

// export type definition of API
export type UserRouter = typeof userRouter;
