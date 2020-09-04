<template>
  <FlexContainer class="projects flex-col">
    <LazyProject
      v-for="(project, i) in projects"
      :key="project + i"
      :project="project"
    />
  </FlexContainer>
</template>

<script>
export default {
  name: 'Projects',

  props: {
    projects: {
      type: Array,
      required: true,
    },
  },
}
</script>
