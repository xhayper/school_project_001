import type { SupabaseClient } from '@supabase/supabase-js';
import isStudentExist from '~/utils/isStudentExist';
import type { Database } from '~/types/supabase';

export default async function (
  supabaseServiceRole: SupabaseClient<Database>,
  studentId: number
): Promise<{ userId: string; studentId: number }> {
  const studentExists = await isStudentExist(supabaseServiceRole, studentId);

  if (!studentExists) {
    const user = await supabaseServiceRole.auth.admin.createUser({
      email: `skr${studentId}@tkt.ac.th`,
      password: 'skr123456',
      email_confirm: true
    });

    await supabaseServiceRole.from('user_data').insert({
      name: `SKR ${studentId}`,
      id: user.data.user!.id,
      school_id: studentId,
      role: 'STUDENT'
    });

    return { userId: user.data.user!.id, studentId };
  }

  const { data } = await supabaseServiceRole.from('user_data').select('id').eq('school_id', studentId).single();
  return { userId: data!.id, studentId };
}
