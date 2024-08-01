<script setup lang="tsx">
/**
 * v0 by Vercel.
 * @see https://v0.dev/t/Yuu34t1k55p
 * Documentation: https://v0.dev/docs#integrating-generated-code-into-your-nextjs-app
 */

import { Button } from '@/components/ui/button';
import { Card, CardContent, CardFooter } from '@/components/ui/card';
import { Avatar, AvatarImage, AvatarFallback } from '@/components/ui/avatar';
import { Label } from '@/components/ui/label';
import { Input } from '@/components/ui/input';
</script>

<template>
  <div class="flex min-h-screen flex-col bg-background">
    <header
      class="sticky top-0 z-10 flex h-14 items-center gap-4 border-b bg-background px-4 sm:static sm:h-auto sm:border-0 sm:bg-transparent sm:px-6"
    >
      <Button variant="outline" size="icon" class="sm:hidden">
        <div class="h-5 w-5" />
        <span class="sr-only">Back</span>
      </Button>
    </header>
    <main class="flex-1 px-4 py-8 sm:px-6 sm:py-10">
      <div class="mx-auto max-w-md space-y-8">
        <div class="space-y-2">
          <h1 class="text-2xl font-bold">User Settings</h1>
          <p class="text-muted-foreground">Update your profile information.</p>
        </div>
        <Card>
          <CardContent class="space-y-6">
            <div class="flex items-center justify-center">
              <Avatar class="h-20 w-20 my-8">
                <AvatarImage src="/placeholder-user.jpg" />
                <AvatarFallback>JD</AvatarFallback>
              </Avatar>
            </div>
            <div class="grid gap-2">
              <Label for="name">Name</Label>
              <Input id="name" type="text" defaultValue="John Doe" />
            </div>
            <div class="grid gap-2">
              <Label for="avatar">Avatar</Label>
              <div class="flex items-center gap-2">
                <Input id="avatar" type="file" />
                <Button variant="outline" size="icon">
                  <div class="h-4 w-4" />
                  <span class="sr-only">Upload</span>
                </Button>
              </div>
            </div>
          </CardContent>
          <CardFooter class="flex justify-end">
            <Button>Save</Button>
          </CardFooter>
        </Card>
      </div>
    </main>
  </div>
</template>
