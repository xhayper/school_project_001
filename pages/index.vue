<script setup lang="tsx">
import { Chart as ChartJS, RadarController, LineElement, PointElement, RadialLinearScale, Filler } from 'chart.js'
import { Radar } from "vue-chartjs";

ChartJS.register(RadarController, LineElement, PointElement, RadialLinearScale, Filler);

const user = useSupabaseUser()
const client = useSupabaseClient();

//////////////////////

const subjectData = {
  'Math': 0,
  'Science': 0,
  'History': 0,
  'English': 0,
  'Art': 0,
  'Music': 0,
  'Physical Education': 0
}

const data = {
  labels: Object.keys(subjectData),
  datasets: [{
    data: Object.values(subjectData),
    fill: true,
    backgroundColor: 'rgba(255, 99, 132, 0.2)',
    borderColor: 'rgb(255, 99, 132)',
    pointBackgroundColor: 'rgb(255, 99, 132)',
    pointBorderColor: '#fff',
    pointHoverBackgroundColor: '#fff',
    pointHoverBorderColor: 'rgb(255, 99, 132)'
  }]
};

const options = {
  scales: {
    r: {
      suggestedMin: 0,
      suggestedMax: 100
    }
  }
}

const chartRef = ref<any>(null);

const updateChart = () => {
  console.log(chartRef.value!.chart)
  chartRef.value!.chart.data.datasets[0].data = Object.values(subjectData);
  chartRef.value!.chart.update();
}
</script>

<template>
  <div>
    <div v-if="user">
      <Account />
      <div>
        <label>TRPC test</label>
        <TrpcTest />
      </div>
    </div>

    <div>
      <div style="width: 500px">
        <Radar ref="chartRef" :data="data" :options="options" />
      </div>

      <div v-for="(subject) in Object.keys(subjectData)" :key="subject">
        <label>{{ subject }}: </label>
        <input type="range" max="100" min="0" v-model="subjectData[subject]"
          @input="(event) => { subjectData[subject] = event.target.value; updateChart() }" />
      </div>

      <div>
        <label>Randomize: </label>
        <button
          @click="() => { Object.keys(subjectData).forEach((subject) => { subjectData[subject] = Math.floor(Math.random() * 100) }); updateChart() }">Randomize</button>
      </div>
    </div>
  </div>
</template>