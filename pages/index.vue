<template>
  <div>
    <Hero>I build robust web apps</Hero>
    <FlexContainer class="flex-col py-8">
      <LazyProjectCompact
        v-for="(project, i) in projects"
        :key="project + i"
        :project="project"
      />
    </FlexContainer>
  </div>
</template>

<script>
export default {
  asyncData({ $content }) {
    return $content('projects')
      .sortBy('createdAt', 'desc')
      .fetch()
      .then((projects) => {
        return { projects }
      })
  },

  head() {
    const title = 'Oleksandr Bystrikov - Work and projects'
    return {
      title,
      meta: [
        {
          hid: 'og:title',
          name: 'og:title',
          content: title,
        },
        // meta description for index page is defined in package.json
      ],
    }
  },
}
</script>
