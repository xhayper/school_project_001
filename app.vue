<script setup lang="ts">
import { cn } from './lib/utils';
</script>

<template>
  <div :class="cn('antialiased')">
    <NuxtLoadingIndicator />
    <NuxtLayout>
      <NuxtPage />
    </NuxtLayout>
  </div>
</template>
