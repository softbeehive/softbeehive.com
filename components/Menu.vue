<template>
  <nav>
    <ul class="nav-menu flex justify-around w-full">
      <li v-for="(route, i) in routes" :key="route.name + i" class="px-2">
        <nuxt-link class="" :to="route.path">
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
