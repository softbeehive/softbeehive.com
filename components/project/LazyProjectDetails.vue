<template>
  <article class="flex flex-col mb-2 lg:mb-8 -mx-4">
    <div class="flex flex-wrap lg:mb-4">
      <div class="w-full lg:w-1/2 px-4">
        <section class="pb-4">
          <h2 class="text-lg font-bold pb-2">About</h2>
          <p>{{ project.summary }}</p>
        </section>
        <section class="pb-4">
          <h2 class="text-lg font-bold pb-2">Skill Stack</h2>
          <p>{{ project.softstack }}</p>
        </section>
        <section class="pb-4">
          <h2 class="text-lg font-bold pb-2">Timeframe</h2>
          <p>{{ project.chronos }}</p>
        </section>
      </div>
      <div class="w-full lg:w-1/2 px-4">
        <section class="pb-4">
          <h2 class="text-lg font-bold pb-2">Impact</h2>
          <nuxt-content :id="project.slug" :document="project" />
        </section>
      </div>
    </div>
    <div class="w-full order-first lg:order-last px-4">
      <ProjectBrowser :project="project" />
    </div>
  </article>
</template>

<script>
export default {
  name: 'LazyProjectDetails',

  props: {
    project: {
      type: Object,
      required: true,
    },
  },
}
</script>
