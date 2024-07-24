import { z } from 'zod'
import { publicProcedure, authedProcedure, router } from '../trpc'

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
        })

})

// export type definition of API
export type AppRouter = typeof appRouter
