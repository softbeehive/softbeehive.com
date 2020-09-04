<template>
  <article>
    <h1>{{ project.title }}</h1>
    <nuxt-content :id="project.slug" :document="project" />
  </article>
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
