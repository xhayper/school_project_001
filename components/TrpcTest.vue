<script setup lang="tsx">
const { $client } = useNuxtApp()

const userData = await $client.me.useQuery();
const myGrade = $client.get_grades.useQuery();
</script>

<template>
  <div>
    <p>{{ JSON.stringify(userData.data?.value) }}</p>
    <p>{{ JSON.stringify(myGrade.data?.value) }}</p>
  </div>
</template>
