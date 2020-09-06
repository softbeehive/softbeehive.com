<template>
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
        class="browser-address-bar flex items-center flex-grow-1 w-full rounded bg-gray-300 text-gray-700 py-2 px-3"
      >
        <BaseIcon
          name="lock"
          size="0.9"
          class="browser-lock flex-grow-1 flex-shrink-0 text-gray-500 fill-current mr-2"
        />
        <div class="flex-shrink-1">{{ project.origin || 'about:history' }}</div>
      </div>
    </div>
    <div class="browser-body">
      <figure v-if="project.slug" class="picture">
        <picture>
          <source
            :data-srcset="
              require(`@/assets/img/projects/${project.slug}-2x.${
                project.imageExt || 'jpg'
              }?webp`)
            "
            type="image/webp"
          />
          <img
            class="w-full lazyload"
            :alt="project.title"
            :data-src="
              require(`@/assets/img/projects/${project.slug}-2x.${
                project.imageExt || 'jpg'
              }`)
            "
          />
        </picture>
      </figure>
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
