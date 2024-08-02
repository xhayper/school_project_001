// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2024-04-03',
  css: ['@/assets/css/tailwind.scss', '@/assets/css/main.scss'],
  modules: ['@nuxt/fonts', '@nuxtjs/tailwindcss', 'shadcn-nuxt', '@nuxtjs/supabase'],
  app: {
    head: {
      title: 'Career Analyzer',
      meta: [
        { name: "description", content: "Career Analyzer" },
        { name: "og:title", content: "Career Analyzer" },
        { name: "theme-color", content: "#0f0f10" },
      ]
    }
  },
  supabase: {
    url: process.env.SUPABASE_URL,
    key: process.env.SUPABASE_ANON_KEY,
    serviceKey: process.env.SUPABASE_SERVICE_ROLE_KEY,
    redirectOptions: {
      login: '/login',
      callback: '/confirm'
    }
  },
  devtools: {
    enabled: true,
    timeline: {
      enabled: true
    }
  },
  build: {
    transpile: ['trpc-nuxt']
  },
  typescript: {
    shim: false
  }
});
