import { z } from 'zod'
import { publicProcedure, authedProcedure, router } from '../trpc'
import { TRPCError } from '@trpc/server'

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

    me: authedProcedure
        .query(async ({ ctx }) => {
            return (await ctx.supabaseServiceRole.from('user_data').select('*').eq('id', ctx.supabaseSession!.user.id).single()).data!
        }),

    get_grades: authedProcedure
        .input(
            z.object({
                id: z.string().optional(),
            }).optional()
        )
        .query(async ({ ctx, input }) => {
            if (input && ctx.user!.role === "STUDENT" && ctx.user!.id !== input?.id)
                throw new Error("You are not allowed to view other students' grades")

            return (await ctx.supabaseServiceRole.from('grade').select('*').eq('user_id', input?.id ?? ctx.user!.id)).data;
        })
})

// export type definition of API
export type AppRouter = typeof appRouter
