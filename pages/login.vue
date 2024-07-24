<script setup lang="tsx">
import type { Database } from '~/types/supabase';

const supabase = useSupabaseClient<Database>();

const loading = ref(false);
const email = ref('');
const password = ref('');

const handleLogin = async () => {
  try {
    loading.value = true;
    const { error } = await supabase.auth.signInWithPassword({
      email: email.value,
      password: password.value
    });
    if (error) throw error;
    navigateTo('/');
  } catch (error: any) {
    alert(error.message);
  } finally {
    loading.value = false;
  }
};

const handleRegister = async () => {
  try {
    loading.value = true;
    const { error } = await supabase.auth.signUp({
      email: email.value,
      password: password.value
    });
    if (error) throw error;
    navigateTo('/');
  } catch (error: any) {
    alert(error.message);
  } finally {
    loading.value = false;
  }
};
</script>

<template>
  <div class="row flex flex-center">
    <div class="col-6 form-widget">
      <h1 class="header">Hello! Please sign in!</h1>
      <div>
        <label for="email">Email</label>
        <input id="email" type="email" v-model="email" />

        <label for="password">Password</label>
        <input id="password" type="password" v-model="password" />

        <button type="button" :disabled="loading" @click="handleLogin">
          {{ loading ? 'Loading' : 'Sign in' }}
        </button>
        <button type="button" :disabled="loading" @click="handleRegister">
          {{ loading ? 'Loading' : 'Register' }}
        </button>
      </div>
    </div>
  </div>
</template>
