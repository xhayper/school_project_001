<script setup lang="tsx">
import type { Database } from '~/types/supabase';

const supabase = useSupabaseClient<Database>();
await supabase.auth.signOut().catch(() => {});
await navigateTo('/login');
</script>

<template>
  <div />
</template>
