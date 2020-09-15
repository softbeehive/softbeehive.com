<template>
  <span>{{ experienceInYears }}</span>
</template>

<script>
import experienceMixin from '@/mixins/experienceInYears'
export default {
  name: 'ExperienceCounter',
  mixins: [experienceMixin],
}
</script>
