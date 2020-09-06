<template>
  <article class="project flex flex-wrap mb-8 md:mb-10 -mx-4">
    <div class="w-full lg:w-2/3 px-4">
      <ProjectBrowser :project="project" />
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
