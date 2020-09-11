<template>
  <div>
    <Hero>Get in touch</Hero>
    <FlexContainer class="flex-col py-5 md:py-8">
      <article class="prose">
        <h3 class="font-bold text-lg pb-1">
          Oleksandr Bystrikov
        </h3>
        <p>
          Lead Frontend Developer <br />
          Berlin, Germany
        </p>
        <section class="flex flex-wrap -mx-1">
          <a
            v-for="item in items"
            :key="item.name"
            class="px-1"
            :href="item.link"
            target="_blank"
            rel="noopener"
            :title="item.name"
            :alt="item.name"
          >
            <BaseIcon
              :name="item.name"
              size="1.5"
              class="text-gray-600 fill-current"
            />
          </a>
        </section>
      </article>
    </FlexContainer>
  </div>
</template>

<script>
export default {
  computed: {
    items() {
      const data = [
        {
          name: 'github',
          link: 'https://github.com/softbeehive',
        },
        {
          name: 'twitter',
          link: 'https://twitter.com/softbeehive',
        },
        {
          name: 'linkedin',
          link: 'https://de.linkedin.com/in/bystrikov',
        },
        {
          name: 'telegram',
          link: 'https://t.me/softbeehive',
        },
      ]
      return data
    },
  },

  head() {
    const title = 'Contact'
    const content = 'Get in touch with @softbeehive'
    return {
      title,
      meta: [
        {
          hid: 'description',
          name: 'description',
          content,
        },
        {
          hid: 'og:title',
          name: 'og:title',
          content: title,
        },
        {
          hid: 'og:description',
          name: 'og:description',
          content,
        },
      ],
    }
  },
}
</script>
