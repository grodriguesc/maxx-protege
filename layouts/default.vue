<template>
  <v-app class="v-app">
    <v-app-bar color="#FF6623" :clipped-left="clipped" fixed app>
      <AppBarTop v-if="this.windowWidth >= 1879" />
      <AppBarTopSm v-else-if="this.windowWidth <= 768" />
      <app-bar-top-md-sm v-else></app-bar-top-md-sm>
    </v-app-bar>
    <v-app-bar
      v-if="this.windowWidth <= 768"
      style="margin-top: 55px"
      :clipped-left="clipped"
      fixed
      app
    >
      <AppBarBaixoSm />
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

<style>
@font-face {
  font-family: Gotham;
  src: url('static/fonts/Gotham-Font/Gotham-Font/Gotham-Light.otf')
    format('opentype');
}

@font-face {
  font-family: Gotham;
  font-weight: bold;
  src: url('static/fonts/Gotham-Font/Gotham-Font/Gotham-Bold.otf')
    format('opentype');
}

@font-face {
  font-family: Gotham;
  font-weight: normal;
  src: url('static/fonts/Gotham-Font/Gotham-Font/Gotham-Light.otf')
    format('opentype');
}

.v-app {
  font-family: Gotham;
}
</style>
