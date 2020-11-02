<template>
  <div class="project">
    <Hero>
      {{ project.title }}
      <template #subtitle>
        <p class="text-lg">{{ project.subtitle }}</p>
      </template>
    </Hero>
    <FlexContainer class="flex-col py-8">
      <LazyProjectDetails :project="project" />
    </FlexContainer>
  </div>
</template>

<script>
export default {
  asyncData({ $content, params }) {
    return $content('projects')
      .where({ slug: params.slug })
      .limit(1)
      .fetch()
      .then((project) => {
        return { project: project[0] }
      })
  },

  head() {
    const title = `${this.project.title} - Projects`
    return {
      title,
      meta: [
        {
          hid: 'description',
          name: 'description',
          content: this.project.summary,
        },
        {
          hid: 'og:title',
          name: 'og:title',
          content: title,
        },
        {
          hid: 'og:description',
          name: 'og:description',
          content: this.project.summary,
        },
      ],
    }
  },
}
</script>
