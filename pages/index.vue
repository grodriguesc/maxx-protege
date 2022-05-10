<template>
  <div>
    <page-large v-if="this.windowWidth >= 1879"></page-large>
    <page-small v-else-if="this.windowWidth <= 768"></page-small>
    <page-medium v-else></page-medium>
  </div>
</template>

<script>
import PageLarge from '~/components/PageLarge.vue'
import PageMedium from '~/components/PageMedium.vue'
import PageSmall from '~/components/PageSmall.vue'

export default {
  components: { PageLarge, PageMedium, PageSmall },
  data() {
    return {
      windowWidth: window.innerWidth,
    }
  },
  mounted() {
    window.onresize = () => {
      this.windowWidth = window.innerWidth
    }
  },
}
</script>
