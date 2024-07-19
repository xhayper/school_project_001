<script setup lang="tsx">
const user = useSupabaseUser();
</script>

<template>
  <div>
    <NuxtLoadingIndicator />
    <Auth v-if="!user" />
    <NuxtLayout v-else>
      <NuxtPage />
    </NuxtLayout>
  </div>
</template>
