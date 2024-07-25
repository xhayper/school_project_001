<script setup lang="tsx">
import type { Database } from '~/types/supabase';
import uploadGrade from '~/utils/uploadGrade';

const { $client } = useNuxtApp();

const isLoading = ref(false);

const studentIdToView = ref(1);

const fileInputRef = ref<HTMLInputElement>();
const subjectRef = ref<Database['public']['Enums']['grade_subject']>('MATH');

const currentUserDataRef = (await $client.user.get.useQuery()).data;

const gradeSubmit = async () => {
  const fileList = fileInputRef.value!.files;

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
  <div>
    <div>
      <label>Student Id to view:</label>
      <input type="number" v-model="studentIdToView" />
      <button @click.prevent="navigateTo(`/grade/${studentIdToView}`)">View</button>
    </div>

    <div v-if="currentUserDataRef && !currentUserDataRef.error && currentUserDataRef.value.role !== 'STUDENT'">
      <div v-if="!isLoading">
        <label>Import grade:</label>
        <select v-model="subjectRef">
          <option value="MATH">Math</option>
          <option value="BIOLOGY">Biology</option>
          <option value="ENGLISH">English</option>
          <option value="PHYSICS">Physics</option>
          <option value="CHEMISTRY">Chemistry</option>
          <option value="HISTORY">History</option>
          <option value="ECONOMICS">Economics</option>
        </select>
        <input type="file" accept=".csv" ref="fileInputRef" />
        <button @click.prevent="gradeSubmit">Submit</button>
      </div>
      <div v-else>Loading...</div>
    </div>
  </div>
</template>
