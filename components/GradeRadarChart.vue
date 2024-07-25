<script setup lang="tsx">
import { Chart as ChartJS, RadarController, LineElement, PointElement, RadialLinearScale, Filler } from 'chart.js';
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
      pointBackgroundColor: 'rgb(255, 99, 132)',
      pointBorderColor: '#fff',
      pointHoverBackgroundColor: '#fff',
      pointHoverBorderColor: 'rgb(255, 99, 132)'
    }
  ]
};

const options = {
  scales: {
    r: {
      suggestedMin: 0,
      suggestedMax: 100
    }
  }
};
</script>

<template>
  <div style="width: 500px">
    <Radar :data="data as any" :options="options" />
  </div>
</template>
