<template>
  <svg :style="cssStyle" class="base-icon">
    <use :href="href" />
  </svg>
</template>

<script>
export default {
  name: 'BaseIcon',

  props: {
    name: {
      type: String,
      required: true,
    },

    size: {
      type: [String, Number],
      default: 0.8,
    },

    color: {
      type: String,
      default: '#000',
    },
  },

  computed: {
    href() {
      const sprite = require('@/assets/img/icons/sprite.svg')
      return `${sprite}#${this.name}`
    },

    cssStyle() {
      return {
        width: `${this.size}rem`,
        height: `${this.size}rem`,
      }
    },
  },
}
</script>
