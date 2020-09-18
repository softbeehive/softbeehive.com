<template>
  <article class="flex flex-col -mx-4">
    <div class="flex flex-wrap lg:mb-8">
      <section class="w-full prose lg:w-1/2 px-4 mb-8 lg:mb-0">
        <h3>About</h3>
        <p>{{ project.chronos }}</p>
        <p>{{ project.summary }}</p>
        <h3>Skill stack</h3>
        <p>{{ project.softstack }}</p>
      </section>
      <section class="w-full lg:w-1/2 px-4">
        <div class="prose">
          <h3>Story</h3>
          <nuxt-content :id="project.slug" class="prose" :document="project" />
        </div>
        <div v-if="project.origin" class="flex items-center mt-5">
          <BaseIcon
            name="external-link-alt"
            class="mr-1 text-primary fill-current"
          />
          <a
            :href="`https://${project.origin}`"
            target="_blank"
            class="link"
            :rel="relAttr"
          >
            Visit website
          </a>
        </div>
      </section>
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

  computed: {
    relAttr() {
      const values = [
        'noopener', // https://web.dev/external-anchors-use-rel-noopener/
      ]
      if (!this.project.relfollow) values.push('nofollow')
      return values.join(' ')
    },
  },
}
</script>
