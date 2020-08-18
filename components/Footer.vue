<template>
  <footer class="footer">
    <FlexContainer>{{ startYear }} - {{ currentYear }} </FlexContainer>
  </footer>
</template>

<script>
export default {
  name: 'Footer',

  computed: {
    startYear() {
      return '2008'
    },

    currentYear() {
      const d = new Date()
      return d.getFullYear()
    },
  },
}
</script>

<style lang="scss" scoped></style>
