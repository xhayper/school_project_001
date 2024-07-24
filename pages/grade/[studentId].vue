<script setup lang="ts">
const { $client } = useNuxtApp();

const route = useRoute();

const parsedNumber = parseInt(route.params.studentId as string);

if (Number.isNaN(parsedNumber)) alert('Invalid student number!');

const grade = (
  await $client.get_grade.useQuery({
    studentId: parsedNumber
  })
).data.value;

const studentInfo = (
  await $client.get_info.useQuery({
    studentId: parsedNumber
  })
).data.value;
</script>

<template>
  <div>
    <div v-if="Number.isNaN(parsedNumber)">Invalid student number!</div>
    <div v-else>
      <div>
        <GradeRadarChart :data="grade as any" />
      </div>

      <div>Student name: {{ (studentInfo as any).name }}</div>
    </div>
  </div>
</template>
