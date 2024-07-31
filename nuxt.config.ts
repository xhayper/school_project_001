// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2024-04-03',
  css: ['@/assets/css/tailwind.scss', '@/assets/css/main.scss'],
  modules: ['@nuxt/fonts', '@nuxtjs/tailwindcss', 'shadcn-nuxt', '@nuxtjs/supabase'],
  supabase: {
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
