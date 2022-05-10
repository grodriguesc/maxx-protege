<template>
  <v-app>
    <v-app-bar color="#FF6623" :clipped-left="clipped" fixed app>
      <AppBarTop v-if="this.windowWidth >= 1879" />
      <AppBarTopSm v-else-if="this.windowWidth <= 768" />
      <app-bar-top-md-sm v-else></app-bar-top-md-sm>
    </v-app-bar>
    <v-app-bar style="margin-top: 55px" :clipped-left="clipped" fixed app>
      <AppBarBaixo v-if="this.windowWidth >= 1879" />
      <AppBarBaixoSm v-else-if="this.windowWidth <= 768" />
      <app-bar-baixo-md-sm v-else></app-bar-baixo-md-sm>
    </v-app-bar>
    <v-main>
      <Nuxt />
    </v-main>
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
