<template>
  <div class="logo p-4">
    <nuxt-link to="/">
      <img
        class="logo w-32 h-32"
        src="@/assets/img/ui/logo.svg"
        alt="softbeehive logo"
      />
    </nuxt-link>
    <div>
      <h1 class="text-2xl font-semibold">Softbeehive</h1>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Logo',
}
</script>
