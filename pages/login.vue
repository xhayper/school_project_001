<script setup lang="tsx">
/**
 * v0 by Vercel.
 * @see https://v0.dev/t/tNkrbBg4kbS
 * Documentation: https://v0.dev/docs#integrating-generated-code-into-your-nextjs-app
 */
import { Card, CardHeader, CardTitle, CardDescription, CardContent, CardFooter } from '@/components/ui/card';
import type { Database } from '~/types/supabase';
import { Button } from '@/components/ui/button';
import { Label } from '@/components/ui/label';
import { Input } from '@/components/ui/input';

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
</script>

<template>
  <div class="flex h-screen w-full items-center justify-center bg-background">
    <Card class="w-full max-w-md">
      <CardHeader class="space-y-1 text-center">
        <CardTitle class="text-3xl font-bold">Welcome back</CardTitle>
        <CardDescription>Enter your credentials to sign in</CardDescription>
      </CardHeader>
      <CardContent class="space-y-4">
        <div class="space-y-2">
          <Label for="email">Email</Label>
          <Input id="email" type="email" placeholder="me@example.com" required v-model="email" />
        </div>
        <div class="space-y-2">
          <Label for="password">Password</Label>
          <Input id="password" type="password" required v-model="password" />
        </div>
      </CardContent>
      <CardFooter>
        <Button class="w-full" @click="handleLogin">Sign in</Button>
      </CardFooter>
    </Card>
  </div>
</template>
