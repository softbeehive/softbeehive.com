<template>
  <div>
    <section class="prose">
      <h2 class="project-name">
        <template v-if="project.origin && project.relfollow">
          <a :href="`https://${project.origin}`" target="_blank" :rel="relAttr">
            {{ project.title }}
          </a>
        </template>
        <template v-else>{{ project.title }}</template>
      </h2>
      <span class="font-normal">{{ project.subtitle }}</span>
      <p v-if="project.summary">{{ project.summary }}</p>
    </section>
    <section class="prose my-5">
      <p>{{ project.softstack }}</p>
      <p>{{ project.chronos }}</p>
    </section>
    <section>
      <BaseButtonLink
        :to="`/projects/${project.slug}`"
        class="w-full sm:w-auto text-center"
      >
        View project
      </BaseButtonLink>
    </section>
  </div>
</template>

<script>
export default {
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

<style lang="scss" scoped>
.base-icon {
  fill: theme('colors.links.default');
}

.prose h2 {
  &.project-name {
    @apply mb-0;

    a {
      @apply no-underline;
    }
  }
}
</style>
