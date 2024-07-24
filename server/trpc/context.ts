import { serverSupabaseClient, serverSupabaseServiceRole, serverSupabaseSession } from '#supabase/server';
import { type inferAsyncReturnType } from '@trpc/server';
import type { H3Event } from "h3";

/**
 * Creates context for an incoming request
 * @link https://trpc.io/docs/context
 */
export const createContext = async (event: H3Event) => ({
    supabaseServiceRole: serverSupabaseServiceRole(event),
    supabaseSession: await serverSupabaseSession(event),
    supabaseClient: await serverSupabaseClient(event)
})

export type Context = inferAsyncReturnType<typeof createContext>;
