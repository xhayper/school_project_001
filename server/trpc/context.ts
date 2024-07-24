import { serverSupabaseClient, serverSupabaseServiceRole, serverSupabaseSession } from '#supabase/server';
import { type inferAsyncReturnType } from '@trpc/server';
import type { H3Event } from "h3";

/**
 * Creates context for an incoming request
 * @link https://trpc.io/docs/context
 */
export const createContext = async (event: H3Event) => {
    const supabaseConstant = {
        supabaseServiceRole: serverSupabaseServiceRole(event),
        supabaseSession: await serverSupabaseSession(event),
        supabaseClient: await serverSupabaseClient(event),
    }

    const userData: any =
        supabaseConstant.supabaseSession ?
            (await supabaseConstant.supabaseServiceRole.from('user_data').select('*').eq('id', supabaseConstant.supabaseSession.user.id).single()).data! : null;

    return {
        ...supabaseConstant,

        // User data
        user: userData
    }
};

export type Context = inferAsyncReturnType<typeof createContext>;
