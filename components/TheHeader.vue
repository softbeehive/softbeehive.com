<template>
  <header class="header">
    <FlexContainer
      class="flex-wrap justify-center items-center sm:justify-between"
    >
      <TheLogo />
      <Menu class="w-full sm:w-auto flex" />
    </FlexContainer>
  </header>
</template>

<script>
export default {
  name: 'TheHeader',
}
</script>

<style lang="scss" scoped></style>
