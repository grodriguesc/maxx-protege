<template>
  <div>
    <page-large
      v-if="this.$vuetify.breakpoint.lg || this.$vuetify.breakpoint.xs"
    ></page-large>

    <page-small
      v-else-if="
        this.$vuetify.breakpoint.smAndDown ||
        this.$vuetify.breakpoint.mobileBreakpoint
      "
    ></page-small>
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
