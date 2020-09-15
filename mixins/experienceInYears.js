export default {
  computed: {
    experienceInYears() {
      const start = 2008
      const currYear = new Date().getFullYear()
      const diff = parseInt(currYear) - start
      return diff
    },
  },
}
