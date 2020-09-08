<template>
  <nav>
    <ul class="nav-menu flex justify-center w-full pb-4 sm:pb-0 font-medium">
      <li v-for="(route, i) in routes" :key="route.name + i" class="px-4">
        <nuxt-link class="pb-px" :to="route.path">
          {{ route.name }}
        </nuxt-link>
      </li>
    </ul>
  </nav>
</template>

<script>
export default {
  computed: {
    routes() {
      return [
        { path: '/', name: 'Projects' },
        { path: '/about', name: 'About' },
        { path: '/contact', name: 'Contact' },
      ]
    },
  },
}
</script>
