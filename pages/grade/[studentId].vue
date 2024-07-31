<script setup lang="tsx">
/**
 * v0 by Vercel.
 * @see https://v0.dev/t/ALJfRcwMhcU
 * Documentation: https://v0.dev/docs#integrating-generated-code-into-your-nextjs-app
 */

import { Table, TableHeader, TableRow, TableHead, TableBody, TableCell } from '@/components/ui/table';
import { Card, CardHeader, CardTitle, CardContent, CardDescription } from '@/components/ui/card';
import { Avatar, AvatarImage, AvatarFallback } from '@/components/ui/avatar';
import type { Database } from '~/types/supabase';
import { Button } from '@/components/ui/button';

//////////////////////////////////////

const { $client } = useNuxtApp();

const route = useRoute();

let userExists = ref(false);
let canView = ref(false);

const parsedNumber = parseInt(route.params.studentId as string);

const gradeRef = ref<Database['public']['Tables']['grade']['Row'][] | null>(null);
const studentInfoRef = ref<Database['public']['Tables']['user_data']['Row'] | null>(null);

const toPascalCase = (str: string) => str.replace(/(\w)(\w*)/g, (_, g1, g2) => g1.toUpperCase() + g2.toLowerCase());

const gradeList: {
  [key in Database['public']['Enums']['grade_subject']]: number;
} = {
  MATH: 0,
  BIOLOGY: 0,
  ENGLISH: 0,
  PHYSICS: 0,
  HISTORY: 0,
  ECONOMICS: 0,
  CHEMISTRY: 0
};

type HOLLAND_CODE = 'Realistic' | 'Investigative' | 'Artistic' | 'Social' | 'Enterprising' | 'Conventional';

const averageGPAPerHollandCode: { [key in HOLLAND_CODE]: { minGPA: number; maxGPA: number } } = {
  Realistic: { minGPA: 3.0, maxGPA: 3.5 },
  Investigative: { minGPA: 3.2, maxGPA: 3.7 },
  Artistic: { minGPA: 3.0, maxGPA: 3.5 },
  Social: { minGPA: 3.1, maxGPA: 3.6 },
  Enterprising: { minGPA: 3.0, maxGPA: 3.5 },
  Conventional: { minGPA: 3.1, maxGPA: 3.6 }
};

const jobList: {
  [key in HOLLAND_CODE]: {
    name: string;
    scores: { subject: Database['public']['Enums']['grade_subject']; min: number }[];
  }[];
} = {
  Realistic: [
    { name: 'Math', scores: [{ subject: 'MATH', min: 75 }] },
    {
      name: 'Science',
      scores: [
        { subject: 'PHYSICS', min: 75 },
        { subject: 'BIOLOGY', min: 75 },
        { subject: 'PHYSICS', min: 75 },
        { subject: 'CHEMISTRY', min: 75 }
      ]
    },
    { name: 'Technology', scores: [{ subject: 'MATH', min: 75 }] },
    {
      name: 'Engineering',
      scores: [
        { subject: 'MATH', min: 75 },
        { subject: 'PHYSICS', min: 75 }
      ]
    }
  ],
  Investigative: [
    { name: 'Math', scores: [{ subject: 'MATH', min: 75 }] },
    {
      name: 'Science',
      scores: [
        { subject: 'PHYSICS', min: 75 },
        { subject: 'BIOLOGY', min: 75 },
        { subject: 'PHYSICS', min: 75 },
        { subject: 'CHEMISTRY', min: 75 }
      ]
    },
    {
      name: 'Computer Science',
      scores: [
        { subject: 'MATH', min: 75 },
        { subject: 'PHYSICS', min: 75 }
      ]
    }
  ],
  // empty for now
  Artistic: [],
  Social: [],
  Enterprising: [],
  Conventional: []
};

//////////////////////////////////////

const GPA = computed(
  () => (Object.values(gradeList).reduce((acc, grade) => acc + grade, 0) / (100 * Object.keys(gradeList).length)) * 4
);

const SubjectGPA = computed(() =>
  Object.entries(gradeList).reduce(
    (acc, [subject, grade]) => {
      (acc as any)[subject] = (grade / 100) * 4;
      return acc;
    },
    {} as { [key in Database['public']['Enums']['grade_subject']]: number }
  )
);

const averageHollandCode = computed(() => {
  const gpa = GPA.value;
  return Object.entries(averageGPAPerHollandCode)
    .filter(([_, { minGPA }]) => gpa >= minGPA)
    .map(([name, { minGPA, maxGPA }]) => ({ name, minGPA, maxGPA }));
});

const availableJobs = computed(() => {
  const passedJob: string[] = [];

  Object.values(jobList).forEach((jobs) => {
    jobs.forEach((job) => {
      const scores = job.scores;
      const passed = scores.every((score) => {
        return gradeList[score.subject] >= score.min;
      });

      if (passed) {
        passedJob.push(job.name);
      }
    });
  });

  return passedJob;
});

if (parsedNumber == null || Number.isNaN(parsedNumber)) {
  navigateTo('/no-access');
} else {
  const isStudentExists = await $client.user.exists.query(parsedNumber);
  userExists.value = isStudentExists != null && isStudentExists;

  if (userExists) {
    const infoQueryResult = await $client.user.get.query({
      studentId: parsedNumber
    });

    canView.value = !infoQueryResult.error;

    if (canView) {
      studentInfoRef.value = infoQueryResult.value as any;
      gradeRef.value = (
        await $client.grade.get.query({
          studentId: parsedNumber
        })
      ).value as any;

      if (gradeRef.value == null) {
        gradeRef.value = [];
      }

      gradeRef.value.forEach((grade) => {
        gradeList[grade.subject] = grade.grade;
      });
    } else {
      navigateTo('/no-access');
    }
  } else {
    navigateTo('/no-access');
  }
}
</script>

<template>
  <ClientOnly>
    <div class="grid gap-6 px-4 py-8 md:px-6 md:py-12 max-w-6xl mx-auto">
      <div class="flex items-center justify-between">
        <div class="flex items-center gap-4">
          <Avatar class="h-12 w-12">
            <AvatarImage src="/placeholder-user.jpg" />
            <AvatarFallback>JS</AvatarFallback>
          </Avatar>
          <div>
            <h1 class="text-2xl font-bold">{{ studentInfoRef!.name }}</h1>
          </div>
        </div>
        <div class="flex items-center gap-2">
          <Button variant="outline" @click.prevent="navigateTo('/')">
            <ArrowLeftIcon class="h-4 w-4" />
            Back
          </Button>
        </div>
      </div>
      <div class="grid md:grid-cols-2 gap-6">
        <Card>
          <CardHeader>
            <CardTitle>Overall Performance</CardTitle>
          </CardHeader>
          <CardContent>
            <div class="aspect-square">
              <GradeRadarChart :data="gradeRef!" style="width: 32rem; height: 32rem" />
            </div>
          </CardContent>
        </Card>
        <Card>
          <CardHeader>
            <CardTitle>Subject GPAs</CardTitle>
          </CardHeader>
          <CardContent>
            <Table>
              <TableHeader>
                <TableRow>
                  <TableHead>Subject</TableHead>
                  <TableHead class="text-right">GPA</TableHead>
                </TableRow>
              </TableHeader>
              <TableBody>
                <TableRow v-for="[subject, gpa] in Object.entries(SubjectGPA)" :key="subject">
                  <TableCell>{{ toPascalCase(subject) }}</TableCell>
                  <TableCell class="text-right">{{ Math.round(gpa * 100) / 100 }}</TableCell>
                </TableRow>
              </TableBody>
            </Table>
          </CardContent>
        </Card>
      </div>
      <Card>
        <CardHeader>
          <CardTitle>Overall GPA</CardTitle>
          <CardDescription>Your cumulative grade point average.</CardDescription>
        </CardHeader>
        <CardContent>
          <div class="flex items-center justify-center gap-2 text-4xl font-bold">
            {{ Math.round(GPA * 100) / 100 }}
          </div>
        </CardContent>
      </Card>
      <Card>
        <CardHeader>
          <CardTitle>Hollen Codes</CardTitle>
        </CardHeader>
        <CardContent>
          <Table>
            <TableHeader>
              <TableRow>
                <TableHead>Code</TableHead>
                <TableHead class="text-right">Average Range</TableHead>
              </TableRow>
            </TableHeader>
            <TableBody>
              <TableRow v-for="code in averageHollandCode" :key="code.name">
                <TableCell>{{ code.name }}</TableCell>
                <TableCell class="text-right">{{ code.minGPA }} - {{ code.maxGPA }}</TableCell>
              </TableRow>
            </TableBody>
          </Table>
        </CardContent>
      </Card>
      <Card>
        <CardHeader>
          <CardTitle>Jobs</CardTitle>
        </CardHeader>
        <CardContent>
          <Table>
            <TableHeader>
              <TableRow>
                <TableHead>Job</TableHead>
              </TableRow>
            </TableHeader>
            <TableBody>
              <TableRow v-for="job in availableJobs" :key="job">
                <TableCell>{{ job }}</TableCell>
              </TableRow>
            </TableBody>
          </Table>
        </CardContent>
      </Card>
    </div>
  </ClientOnly>
</template>
