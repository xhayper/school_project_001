import { z } from 'zod';
import { publicProcedure, authedProcedure, router } from '../trpc';
import { TRPCError } from '@trpc/server';

export const appRouter = router({
  // hello: publicProcedure
  //     .input(
  //         z.object({
  //             text: z.string().nullish(),
  //         }),
  //     )
  //     .query(({ input }) => {
  //         return {
  //             greeting: `hello ${input?.text ?? 'world'}`,
  //         }
  //     }),

  get_info: authedProcedure
    .input(
      z
        .object({
          studentId: z.number().optional()
        })
        .optional()
    )
    .query(async ({ ctx, input }) => {
      if (input?.studentId && ctx.user!.role === 'STUDENT' && ctx.user!.school_id !== input?.studentId)
        throw new Error("You are not allowed to view other students' grades");

      let userId;

      if (input?.studentId) {
        userId = (
          await ctx.supabaseServiceRole.from('user_data').select('id').eq('school_id', input.studentId).single()
        ).data!.id;
      } else {
        userId = ctx.user.id;
      }

      return (await ctx.supabaseServiceRole.from('user_data').select('*').eq('id', userId).single()).data!;
    }),

  get_grade: authedProcedure
    .input(
      z
        .object({
          studentId: z.number().optional()
        })
        .optional()
    )
    .query(async ({ ctx, input }) => {
      if (input?.studentId && ctx.user!.role === 'STUDENT' && ctx.user!.school_id !== input?.studentId)
        throw new Error("You are not allowed to view other students' grades");

      let userId;

      if (input?.studentId) {
        userId = (
          await ctx.supabaseServiceRole.from('user_data').select('id').eq('school_id', input.studentId).single()
        ).data!.id;
      } else {
        userId = ctx.user.id;
      }

      return (await ctx.supabaseServiceRole.from('grade').select('*').eq('user_id', userId)).data;
    })
});

// export type definition of API
export type AppRouter = typeof appRouter;
