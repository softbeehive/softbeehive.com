<template>
  <div>
    <Hero>About me</Hero>
    <FlexContainer class="flex-col py-5 md:py-8">
      <div
        class="flex flex-wrap lg:flex-no-wrap items-center justify-center lg:-mx-10"
      >
        <div
          class="w-full lg:w-56 max-w-sm mb-5 mt-1 lg:mb-0 lg:mt-0 lg:px-10 lg:order-last flex-shrink-0 overflow-hidden"
        >
          <img
            src="@/assets/img/pages/lighthouse-y.png"
            alt="Lighthouse results"
            class="hidden lg:block"
          />
          <img
            src="@/assets/img/pages/lighthouse-x.png"
            alt="Lighthouse results"
            class="block lg:hidden"
          />
        </div>
        <nuxt-content
          id="about"
          class="w-full lg:w-auto prose flex-grow-0 lg:px-10"
          :document="about"
        />
      </div>
    </FlexContainer>
  </div>
</template>

<script>
import ExperienceCounter from '@/components/tiny/ExperienceCounter'

export default {
  components: {
    // eslint-disable-next-line vue/no-unused-components
    ExperienceCounter,
  },

  asyncData({ $content }) {
    return $content('about')
      .fetch()
      .then((about) => {
        return { about }
      })
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
