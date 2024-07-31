<script setup lang="ts">
import type { Database } from '~/types/supabase';

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
  CHEMISTRY: 100
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
    .filter(([_, { minGPA, maxGPA }]) => gpa >= minGPA && gpa <= maxGPA)
    .map(([name, { minGPA, maxGPA }]) => ({ name, minGPA, maxGPA }));
});

const availableJobs = computed(() => {
  return Object.entries(jobList).reduce(
    (acc, [hollandCode, jobs]) => {
      const availableJobs = jobs.filter((job) => {
        return job.scores.every((score) => {
          return gradeList[score.subject] >= score.min;
        });
      });

      if (availableJobs.length > 0) {
        (acc as any)[hollandCode] = availableJobs.map((job) => job.name);
      }

      return acc;
    },
    {} as { [key in HOLLAND_CODE]: string[] }
  );
});

if (!Number.isNaN(parsedNumber)) {
  const isStudentExists = await $client.user.exists.query(parsedNumber);
  userExists.value = isStudentExists != null && isStudentExists;
}

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
  }
}
</script>

<template>
  <div>
    <div v-if="Number.isNaN(parsedNumber)">Invalid student number!</div>
    <div v-else-if="!userExists">Student not found!</div>
    <div v-else-if="!canView">You can't view this person's grade!</div>
    <div v-else>
      <div>
        <GradeRadarChart :data="gradeRef!" />
      </div>

      <div>Student name: {{ studentInfoRef!.name }}</div>
      <br />
      <div>Overall GPA: {{ Math.round(GPA * 100) / 100 }}</div>
      <br />
      <div>Subject GPA:</div>
      <ul>
        <li v-for="[subject, gpa] in Object.entries(SubjectGPA)" :key="subject">
          {{ toPascalCase(subject) }}: {{ Math.round(gpa * 100) / 100 }}
        </li>
      </ul>
      <br />

      <div v-if="averageHollandCode.length > 0">
        <div>You are in the average range for these Hollan Code</div>
        <br />
        <ul>
          <li v-for="hollandCode in averageHollandCode" :key="hollandCode.name">
            <div>{{ hollandCode.name }}</div>
            <div>GPA: {{ hollandCode.minGPA }} - {{ hollandCode.maxGPA }}</div>
            <div v-if="(availableJobs as any)[hollandCode.name] && (availableJobs as any)[hollandCode.name].length > 0">
              <br />
              <div>Job that fits you in these categoires:</div>
              <ul>
                <li v-for="job in (availableJobs as any)[hollandCode.name]" :key="job">
                  {{ job }}
                </li>
              </ul>
            </div>
            <br />
          </li>
        </ul>
      </div>
    </div>
    <div>
      <NuxtLink to="/">Back</NuxtLink>
    </div>
  </div>
</template>
