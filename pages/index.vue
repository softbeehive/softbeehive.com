<template>
  <div>
    <Hero>
      I build robust web apps
    </Hero>
    <Projects :projects="projects" />
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
}
</script>
