<template>
  <article class="project flex flex-wrap mb-8 md:mb-10 -mx-4">
    <ProjectBrowser :project="project" />
    <ProjectSummary :project="project" />
  </article>
</template>

<script>
export default {
  name: 'LazyProject',

  props: {
    project: {
      type: Object,
      required: true,
    },
  },
}
</script>
