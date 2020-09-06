<template>
  <div class="project">
    <Hero>{{ project.title }}</Hero>
    <FlexContainer class="flex-col">
      <LazyProjectDetails :project="project" />
    </FlexContainer>
  </div>
</template>

<script>
export default {
  async asyncData({ $content, params }) {
    const project = await $content('projects')
      .where({ slug: params.slug })
      .limit(1)
      .fetch()
    return { project: project[0] }
  },
}
</script>
