<script setup lang="tsx">
const { $client } = useNuxtApp()

const userData = await $client.me.useQuery();
</script>

<template>
  <div>
    <p>{{ JSON.stringify(userData.data?.value) }}</p>
  </div>
</template>
