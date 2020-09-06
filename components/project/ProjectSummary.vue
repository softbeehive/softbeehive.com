<template>
  <div>
    <header class="pb-3">
      <h3 class="text-2xl font-semibold">{{ project.title }}</h3>
      <span v-if="project.subtitle">{{ project.subtitle }}</span>
    </header>
    <section v-if="project.summary" class="pb-4">
      <p>{{ project.summary }}</p>
    </section>
    <section v-if="project.origin" class="pb-4 flex items-center">
      <BaseIcon name="external-link-alt" class="mr-1" />
      <a :href="`https://${project.origin}`" target="_blank" rel="noopener">
        Visit website
      </a>
    </section>
    <section class="pb-4">
      <p>{{ project.softstack }}</p>
    </section>
    <section class="pb-4">
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
}
</script>

<style lang="scss" scoped>
.base-icon {
  fill: theme('colors.links.default');
}
</style>
