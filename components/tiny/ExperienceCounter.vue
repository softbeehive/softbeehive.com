<template>
  <span>{{ experienceInYears }}</span>
</template>

<script>
export default {
  name: 'ExperienceCounter',

  computed: {
    experienceInYears() {
      const start = 2008
      const currYear = new Date().getFullYear()
      const diff = parseInt(currYear) - start
      return diff
    },
  },
}
</script>
