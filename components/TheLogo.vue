<template>
  <div class="logo flex items-center content-center pt-6 pb-5 md:py-8">
    <nuxt-link to="/" class="flex items-center content-center border-none">
      <img
        class="logo w-12 h-12 mr-1"
        src="@/assets/img/ui/logo.svg"
        alt="softbeehive logo"
      />
      <h1 class="text-2xl text-black font-semibold">Softbeehive</h1>
    </nuxt-link>
  </div>
</template>

<script>
export default {
  name: 'TheLogo',
}
</script>
