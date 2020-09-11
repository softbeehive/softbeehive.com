<template>
  <nuxt-link
    v-bind="($props, $attrs)"
    class="button-link rounded-full font-semibold px-6 py-3 inline-block"
  >
    <slot />
  </nuxt-link>
</template>

<script>
export default {
  name: 'BaseButtonLink',
}
</script>

<style lang="scss" scoped>
.button-link {
  cursor: pointer;
  background: linear-gradient(
    135deg,
    theme('colors.cta.200'),
    theme('colors.cta.100')
  );

  &:hover {
    background: linear-gradient(
      135deg,
      theme('colors.cta.300'),
      theme('colors.cta.200')
    );
  }
}
</style>
