<script setup lang="ts">
import type { Database } from '~/types/supabase';

const { $client } = useNuxtApp();

const route = useRoute();

let userExists = ref(false);
let canView = ref(false);

const parsedNumber = parseInt(route.params.studentId as string);

const gradeRef = ref<Database['public']['Tables']['grade']['Row'][] | null>(null);
const studentInfoRef = ref<Database['public']['Tables']['user_data']['Row'] | null>(null);

if (!Number.isNaN(parsedNumber)) {
  const isStudentExists = await $client.user.exists.query(parsedNumber);
  userExists.value = isStudentExists != null && isStudentExists;
}

if (userExists) {
  const infoQueryResult = await $client.user.get.query({
    studentId: parsedNumber
  });

  canView.value = !infoQueryResult.error;

  if (canView) {
    studentInfoRef.value = infoQueryResult.value as any;
    gradeRef.value = (
      await $client.grade.get.query({
        studentId: parsedNumber
      })
    ).value as any;

    console.log(gradeRef.value);
  }
}
</script>

<template>
  <div>
    <div v-if="Number.isNaN(parsedNumber)">Invalid student number!</div>
    <div v-else-if="!userExists">Student not found!</div>
    <div v-else-if="!canView">You can't view this person's grade!</div>
    <div v-else>
      <div>
        <GradeRadarChart :data="gradeRef!" />
      </div>

      <div>Student name: {{ studentInfoRef!.name }}</div>
    </div>
    <div>
      <NuxtLink to="/">Back</NuxtLink>
    </div>
  </div>
</template>
