import type { SupabaseClient } from '@supabase/supabase-js';
import type { SupabaseError } from '~/types/error';
import type { Database } from '~/types/supabase';

export default async function (
  serviceRole: SupabaseClient<Database>,
  schoolId: number
): Promise<SupabaseError<Database['public']['Tables']['user_data']['Row']>> {
  const { error, data, statusText } = await serviceRole
    .from('user_data')
    .select('*')
    .eq('school_id', schoolId)
    .single();

  if (error)
    return {
      error: true,
      value: {
        type: 'USER_NOT_FOUND',
        msg: statusText
      }
    };

  return { error: false, value: data };
}
