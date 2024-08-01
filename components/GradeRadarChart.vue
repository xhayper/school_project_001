<script setup lang="tsx">
import {
  Chart as ChartJS,
  RadarController,
  LineElement,
  PointElement,
  RadialLinearScale,
  Filler,
  type ChartOptions,
  type ChartData
} from 'chart.js';
import type { Database } from '~/types/supabase';
import { Radar } from 'vue-chartjs';

ChartJS.register(RadarController, LineElement, PointElement, RadialLinearScale, Filler);

const props = defineProps<{
  data: Database['public']['Tables']['grade']['Row'][];
}>();

const subjectData = props.data.reduce((acc: any, { subject, grade }: { [key: string]: any }) => {
  acc[subject] = grade;
  return acc;
}, {});

const data = {
  labels: Object.keys(subjectData),
  datasets: [
    {
      data: Object.values(subjectData),
      fill: true,
      backgroundColor: 'rgba(255, 99, 132, 0.2)',
      borderColor: 'rgb(255, 99, 132)',
      pointBorderColor: 'rgb(255, 99, 132)',
      pointBackgroundColor: '#ffffff'
    }
  ]
} satisfies ChartData<'radar'>;

const options = {
  scales: {
    r: {
      grid: {
        color: 'rgba(255, 255, 255, .2)'
      },
      pointLabels: {
        color: 'white',
        backdropColor: 'transparent'
      },
      ticks: {
        color: 'white',
        backdropColor: 'transparent'
      },
      suggestedMin: 0,
      suggestedMax: 100
    }
  }
} satisfies ChartOptions<'radar'>;
</script>

<template>
  <Radar :data="data as any" :options="options" />
</template>
