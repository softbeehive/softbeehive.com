<template>
  <div class="hero">
    <FlexContainer>
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
  // background-color: blue;
}
</style>
