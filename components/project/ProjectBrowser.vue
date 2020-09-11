<template>
  <div class="browser rounded-md overflow-hidden mb-5 lg:mb-auto">
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
      <picture v-if="project.slug">
        <source :data-srcset="webpImage.srcSet" type="image/webp" />
        <source :data-srcset="resizedImage.srcSet" :type="mimeType" />
        <img
          class="w-full lazyload"
          :alt="project.title"
          :width="resizedImage.width"
          :height="resizedImage.height"
          :data-src="originalImage"
          :src="resizedImage.placeholder"
        />
      </picture>
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

  computed: {
    imageExt() {
      return this.project.imageExt || 'jpg'
    },

    mimeType() {
      const type = this.project.imageExt || 'jpeg' // jpeg not jpg is a valid mime type
      return `image/${type}`
    },

    webpImage() {
      const image = require(`@/assets/img/projects/${this.project.slug}.${this.imageExt}?resize&sizes[]=840,sizes[]=1280,sizes[]=1680&format=webp`)
      return image
    },

    resizedImage() {
      const image = require(`@/assets/img/projects/${this.project.slug}.${this.imageExt}?resize&sizes[]=840,sizes[]=1280,sizes[]=1680`)
      return image
    },

    originalImage() {
      const image = require(`@/assets/img/projects/${this.project.slug}.${this.imageExt}`)
      return image
    },
  },
}
</script>

<style lang="scss" scoped>
.browser {
  box-shadow: 2px 4px 8px 0 rgba(0, 0, 0, 0.1),
    0 2px 4px -1px rgba(0, 0, 0, 0.06), 0 -1px 2px 0 rgba(0, 0, 0, 0.1);
}

.browser-top {
  border-bottom: 1px solid theme('colors.gray.200');
}

.browser-controls {
  li {
    @apply inline-block;
    @apply w-3;
    @apply h-3;
    @apply rounded-full;
    @apply bg-gray-400;
  }
}
</style>
