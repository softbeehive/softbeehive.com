<template>
  <footer class="footer bg-gray-800 text-white py-4">
    <FlexContainer>
      <span class="mr-2">&copy; {{ startYear }} - {{ currentYear }}</span>
      <span>{{ author }}</span>
    </FlexContainer>
  </footer>
</template>

<script>
export default {
  name: 'TheFooter',

  computed: {
    startYear() {
      return '2008'
    },

    currentYear() {
      const d = new Date()
      return d.getFullYear()
    },

    author() {
      return 'Oleksandr Bystrikov'
    },
  },
}
</script>
