import type { SupabaseClient } from '@supabase/supabase-js';
import type { Database } from '~/types/supabase';

export default async function (supabaseServiceRole: SupabaseClient<Database>, studentId: number): Promise<boolean> {
  const { count } = await supabaseServiceRole
    .from('user_data')
    .select('', { count: 'exact' })
    .eq('school_id', studentId)
    .limit(1);

  return count !== null && count > 0;
}
