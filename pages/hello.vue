<template>
  <article class="flex">
    <nuxt-content :document="hello" />
  </article>
</template>

<script>
export default {
  async asyncData ({ $content }) {
    const hello = await $content('hello').fetch()

    return { hello }
  }
}
</script>
