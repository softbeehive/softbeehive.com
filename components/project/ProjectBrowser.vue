<template>
  <div class="w-full lg:w-2/3 px-4">
    <div class="browser rounded-md overflow-hidden mb-4 lg:mb-auto">
      <div class="browser-top flex items-center p-3">
        <ul
          class="browser-controls flex-grow-1 flex-shrink-0 hidden lg:block pr-3"
        >
          <li></li>
          <li></li>
          <li></li>
        </ul>
        <div
          class="browser-address-bar flex-grow-1 w-full rounded bg-gray-300 text-gray-700 py-2 px-3"
        >
          {{ project.origin || 'about:history' }}
        </div>
      </div>
      <div class="browser-body">
        <img
          v-if="project.slug"
          class="w-full"
          :src="
            require(`@/assets/img/projects/${project.slug}-2x.${
              project.imageExt || 'jpg'
            }`)
          "
        />
      </div>
    </div>
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
.browser {
  box-shadow: 2px 4px 8px 0 rgba(0, 0, 0, 0.1),
    0 2px 4px -1px rgba(0, 0, 0, 0.06), 0 -1px 2px 0 rgba(0, 0, 0, 0.1);
}

.browser-controls {
  li {
    display: inline-block;
    width: theme('width.3');
    height: theme('height.3');
    border-radius: 50%;
    background-color: theme('colors.gray.400');
  }
}
</style>
