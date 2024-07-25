import type { Database } from '~/types/supabase';

export default async function (subject: Database['public']['Enums']['grade_subject'], gradeCsv: string) {
  const { $client } = useNuxtApp();

  const rows = gradeCsv.split('\n').map((row) => row.split(','));
  rows.splice(0, 2);

  const promiseList = rows.map((row) => {
    const grade = {
      subject,
      grade: parseInt(row[7])
    };

    return $client.grade.modify.query({
      studentId: parseInt(row[2]),
      grades: [grade]
    });
  });

  return await Promise.all(promiseList);
}
