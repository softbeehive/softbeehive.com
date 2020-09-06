<template>
  <div>
    <Hero>
      <h2>I build robust web apps</h2>
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
