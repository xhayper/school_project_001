<script setup lang="tsx">
/**
 * v0 by Vercel.
 * @see https://v0.dev/t/MUoDZsFg4Xo
 * Documentation: https://v0.dev/docs#integrating-generated-code-into-your-nextjs-app
 */

import { Select, SelectTrigger, SelectValue, SelectContent, SelectItem } from '@/components/ui/select';
import type { Database } from '~/types/supabase';
import { Button } from '@/components/ui/button';
import { Label } from '@/components/ui/label';
import { Input } from '@/components/ui/input';
import uploadGrade from '~/utils/uploadGrade';

const { $client } = useNuxtApp();

const isLoading = ref(false);

const studentIdToView = ref(1);

const fileInputRef = ref<FileList>();
const subjectRef = ref<Database['public']['Enums']['grade_subject']>('MATH');

const currentUserDataRef = (await $client.user.get.useQuery()).data;

const gradeSubmit = async () => {
  const fileList = fileInputRef.value;

  console.log(fileList);

  if (!fileList || fileList.length === 0) {
    alert('Please select a file!');
    return;
  }

  isLoading.value = true;
  await uploadGrade(subjectRef.value, await readFile(fileList[0]));
  isLoading.value = false;
};
</script>

<template>
  <div class="container mx-auto max-w-md py-12">
    <div class="space-y-6">
      <div class="text-center space-y-6">
        <h1 class="text-3xl font-bold">Account Managment</h1>
        <NuxtLink to="/manage">
          <Button variant="outline" type="submit" class="w-full"> Manage account </Button>
        </NuxtLink>
        <ClientOnly>
          <form
            class="space-y-4"
            @submit.prevent="navigateTo('/grade/' + currentUserDataRef.value!.school_id)"
            v-if="currentUserDataRef && !currentUserDataRef.error && currentUserDataRef.value.role === 'STUDENT'"
          >
            <Button variant="outline" type="submit" class="w-full"> View your grade </Button>
          </form>
        </ClientOnly>
        <NuxtLink to="/logout">
          <Button variant="outline" type="submit" class="w-full"> Logout </Button>
        </NuxtLink>
      </div>
      <ClientOnly v-if="currentUserDataRef && !currentUserDataRef.error && currentUserDataRef.value.role !== 'STUDENT'">
        <div class="text-center">
          <h1 class="text-3xl font-bold">View Student Grades</h1>
          <p class="text-muted-foreground">Enter the student ID and select a subject to view their grades.</p>
        </div>
        <form class="space-y-4" @submit.prevent="navigateTo(`/grade/${studentIdToView}`)">
          <div class="space-y-2">
            <Label for="student-id">Student ID</Label>
            <Input id="student-id" placeholder="Enter student ID" type="number" v-model="studentIdToView" />
          </div>
          <Button variant="outline" type="submit" class="w-full">View Grades</Button>
        </form>
      </ClientOnly>
      <ClientOnly>
        <div v-if="!isLoading">
          <div
            class="space-y-4"
            v-if="currentUserDataRef && !currentUserDataRef.error && currentUserDataRef.value.role !== 'STUDENT'"
          >
            <div class="text-center">
              <h2 class="text-2xl font-bold">Upload Grade File</h2>
              <p class="text-muted-foreground">Upload a file to update the student's grades.</p>
            </div>
            <form class="space-y-4" @submit.prevent="gradeSubmit">
              <div class="space-y-2">
                <Label for="subject">Subject</Label>
                <Select id="subject">
                  <SelectTrigger>
                    <SelectValue placeholder="Select a subject" />
                  </SelectTrigger>
                  <SelectContent v-model="subjectRef">
                    <SelectItem value="MATH">Math</SelectItem>
                    <SelectItem value="BIOLOGY">Biology</SelectItem>
                    <SelectItem value="ENGLISH">English</SelectItem>
                    <SelectItem value="PHYSICS">Physics</SelectItem>
                    <SelectItem value="CHEMISTRY">Chemistry</SelectItem>
                    <SelectItem value="HISTORY">History</SelectItem>
                    <SelectItem value="ECONOMICS">Economics</SelectItem>
                  </SelectContent>
                </Select>
              </div>
              <div class="space-y-2">
                <Label for="grade-file">Grade File</Label>
                <Input
                  id="grade-file"
                  type="file"
                  accept=".csv"
                  ref="fileInputRef"
                  @input="fileInputRef = $event.target.files"
                />
              </div>
              <Button variant="outline" type="submit" class="w-full">Upload File</Button>
            </form>
          </div>
        </div>
        <div v-else>Loading...</div>
      </ClientOnly>
    </div>
  </div>
</template>
