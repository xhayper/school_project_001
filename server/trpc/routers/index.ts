import { publicProcedure, authedProcedure, router } from '../trpc';
import { gradeRouter } from './grade';
import { userRouter } from './user';

export const appRouter = router({
  user: userRouter,
  grade: gradeRouter
});

// export type definition of API
export type AppRouter = typeof appRouter;
