<template>
  <div>
    <Hero>Get in touch</Hero>
    <FlexContainer class="flex-col py-5 md:py-8">
      <article>
        <section class="mb-4">
          <picture>
            <source :data-srcset="webpImage.srcSet" type="image/webp" />
            <source :data-srcset="resizedImage.srcSet" type="image/jpeg" />
            <img
              class="lazyload rounded-full w-40 sm:w-48"
              alt="Oleksandr Bystrikov"
              data-sizes="auto"
              width="192"
              height="192"
              :data-src="originalImage"
              :src="resizedImage.placeholder"
            />
          </picture>
        </section>
        <h2 class="font-bold text-xl text-gray-900 mb-4">
          Oleksandr Bystrikov
        </h2>
        <p class="mb-5 text-gray-700">
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
import experienceMixin from '@/mixins/experienceInYears'
export default {
  mixins: [experienceMixin],

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

    webpImage() {
      const image = require('@/assets/img/pages/oleksandr.jpg?resize&sizes[]=600,sizes[]=400&format=webp')
      return image
    },

    resizedImage() {
      const image = require('@/assets/img/pages/oleksandr.jpg?resize&sizes[]=600,sizes[]=400')
      return image
    },

    originalImage() {
      const image = require('@/assets/img/pages/oleksandr.jpg')
      return image
    },
  },

  head() {
    const title = 'Oleksandr Bystrikov - Lead frontend software engineer'
    const description = `Software engineering experience: ${this.experienceInYears}+ years. Vue, React, Node, JavaScript. Co-founder of valisa.io`
    return {
      title,
      meta: [
        {
          hid: 'description',
          name: 'description',
          content: description,
        },
        {
          hid: 'og:title',
          name: 'og:title',
          content: title,
        },
        {
          hid: 'og:description',
          name: 'og:description',
          content: description,
        },
      ],
    }
  },
}
</script>
