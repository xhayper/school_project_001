<script setup lang="tsx">
/**
 * v0 by Vercel.
 * @see https://v0.dev/t/NFUFmKOf50N
 * Documentation: https://v0.dev/docs#integrating-generated-code-into-your-nextjs-app
 */
</script>

<template>
  <div class="flex min-h-[100dvh] flex-col items-center justify-center bg-background px-4 py-12 sm:px-6 lg:px-8">
    <div class="mx-auto max-w-md text-center">
      <TriangleAlertIcon class="mx-auto h-12 w-12 text-primary" />
      <h1 class="mt-4 text-3xl font-bold tracking-tight text-foreground sm:text-4xl">Access Denied</h1>
      <p class="mt-4 text-muted-foreground">You do not have permission to access this page.</p>
      <Button variant="outline" type="submit" class="w-full my-5" @click="navigateTo('/')"> Go back </Button>
    </div>
  </div>
</template>
