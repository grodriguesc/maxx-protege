<template>
  <div>
    <page-large v-if="this.$vuetify.breakpoint.lgAndUp"></page-large>
    <page-small v-else-if="smAndDown"></page-small>
    <page-medium v-else></page-medium>
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
