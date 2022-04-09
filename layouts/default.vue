<template>
  <v-app>
    <v-app-bar color="#FF6623" :clipped-left="clipped" fixed app>
      <AppBarTop v-if="this.$vuetify.breakpoint.lg" />
      <AppBarTopMdSm v-else-if="this.$vuetify.breakpoint.md" />
      <AppBarTopSm v-else />
    </v-app-bar>
    <v-app-bar style="margin-top: 55px" :clipped-left="clipped" fixed app>
      <AppBarBaixo v-if="this.$vuetify.breakpoint.lg" />
      <AppBarBaixoMdSm v-else-if="this.$vuetify.breakpoint.md" />
      <AppBarBaixoSm v-else />
    </v-app-bar>
    <v-main>
      <Nuxt />
    </v-main>

    <!-- <v-footer :absolute="!fixed" app>
      <span>&copy; {{ new Date().getFullYear() }}</span>
    </v-footer> -->
  </v-app>
</template>

<script>
import AppBarBaixo from '~/components/AppBarBaixo.vue'
import AppBarBaixoMdSm from '~/components/AppBarBaixoMdSm.vue'
import AppBarBaixoSm from '~/components/AppBarBaixoSm.vue'
import AppBarTop from '~/components/AppBarTop.vue'
import AppBarTopSm from '~/components/AppBarTopSm.vue'
import AppBarTopMdSm from '~/components/AppBarTopMd.vue'
export default {
  components: {
    AppBarBaixo,
    AppBarBaixoSm,
    AppBarTop,
    AppBarTopMdSm,
    AppBarTopSm,
    AppBarBaixoMdSm,
  },
  name: 'DefaultLayout',
  data() {
    return {
      clipped: false,
      drawer: false,
      fixed: false,
      miniVariant: false,
      right: true,
      rightDrawer: false,
      title: 'Vuetify.js',
    }
  },
}
</script>
