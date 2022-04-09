<template>
  <div>
    <page-large v-if="this.$vuetify.breakpoint.lg"></page-large>
    <page-medium v-else-if="this.$vuetify.breakpoint.md"></page-medium>
    <page-small v-else></page-small>
  </div>
</template>

<script>
import PageLarge from '~/components/PageLarge.vue'
import PageMedium from '~/components/PageMedium.vue'
import PageSmall from '~/components/PageSmall.vue'

export default {
  components: { PageLarge, PageMedium, PageSmall },
}
</script>
