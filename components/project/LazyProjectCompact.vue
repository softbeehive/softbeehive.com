<template>
  <article class="project flex flex-wrap mb-10 md:mb-12 -mx-4">
    <div class="w-full lg:w-2/3 px-4">
      <nuxt-link :to="`/projects/${project.slug}`" class="block">
        <ProjectBrowser :project="project" />
      </nuxt-link>
    </div>
    <div class="project-summary w-full lg:w-1/3 px-4">
      <ProjectSummary :project="project" />
    </div>
  </article>
</template>

<script>
export default {
  name: 'LazyProjectCompact',

  props: {
    project: {
      type: Object,
      required: true,
    },
  },
}
</script>

<style lang="scss" scoped>
.project {
  &:last-child {
    margin-bottom: 0;
  }
}
</style>
