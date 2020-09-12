<template>
  <div>
    <section class="prose">
      <h3 class="project-name text-2xl font-semibold">{{ project.title }}</h3>
      <span v-if="project.subtitle" class="font-normal">{{
        project.subtitle
      }}</span>
      <p v-if="project.summary">{{ project.summary }}</p>
    </section>
    <p v-if="project.origin" class="flex items-center my-5">
      <BaseIcon name="external-link-alt" class="mr-1" />
      <a
        :href="`https://${project.origin}`"
        target="_blank"
        class="link"
        :rel="relAttr"
      >
        Visit website
      </a>
    </p>
    <section class="prose mb-5">
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

.prose h3 {
  &.project-name {
    @apply mb-0;
  }
}
</style>
