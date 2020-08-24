<template>
  <footer class="footer bg-gray-800 text-white py-4">
    <FlexContainer>&copy; {{ startYear }} - {{ currentYear }} </FlexContainer>
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
