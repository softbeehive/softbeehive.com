<template>
  <div>
    <Hero>About me</Hero>
    <FlexContainer class="flex-col py-5 md:py-8">
      <div class="flex">
        <nuxt-content id="about" class="prose" :document="about" />
        <div class="w-48 overflow-hidden lg:ml-6 flex-shrink-0">
          <img
            src="~/assets/img/pages/oleksandr.jpg"
            alt="Oleksandr Bystrikov"
            class="rounded-full"
          />
        </div>
      </div>
    </FlexContainer>
  </div>
</template>

<script>
export default {
  asyncData({ $content }) {
    return $content('about')
      .fetch()
      .then((about) => {
        return { about }
      })
  },
  computed: {
    experienceInYears() {
      const start = 2008
      const currYear = new Date().getFullYear()
      const diff = parseInt(currYear) - start
      return diff
    },
  },

  head() {
    const title = 'Oleksandr Bystrikov - Lead frontend software engineer'
    const description = `Software engineering experience: ${this.experienceInYears}+ years. Vue, React, Node, JavaScript. Co-founder of valisa.io`
    return {
      title,
      meta: [
        {
          hid: 'description',
          name: 'description',
          content: description,
        },
        {
          hid: 'og:title',
          name: 'og:title',
          content: title,
        },
        {
          hid: 'og:description',
          name: 'og:description',
          content: description,
        },
      ],
    }
  },
}
</script>

<style lang="scss" scoped>
#about {
  max-width: unset;
}
</style>
