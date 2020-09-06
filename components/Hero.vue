<template>
  <div class="hero">
    <FlexContainer
      class="flex-col justify-center items-center relative font-serif text-center text-3xl text-white py-10 md:py-16 mb-4 md:mb-6"
    >
      <slot />
    </FlexContainer>
  </div>
</template>

<script>
export default {
  name: 'Hero',
}
</script>

<style lang="scss" scoped>
.hero {
  background-color: theme('colors.blue.600'); // fallback
  background-image: linear-gradient(
    109.6deg,
    rgba(31, 179, 237, 1) 11.2%,
    rgba(17, 106, 197, 1) 91.1%
  );
  text-shadow: 1px 1px 2px theme('colors.gray.700');
}
</style>
