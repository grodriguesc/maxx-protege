<template>
  <v-row justify="center">
    <v-col cols="2" class="mt-2" style="color: #fff">
      Assistência 24h: (47) 3304-2028
    </v-col>
    <v-col cols="2" class="mt-2" style="color: #fff">
      <v-icon> mdi-account-outline </v-icon>
      <a
        style="color: #fff !important"
        href="https://taiga.hinova.com.br/sga/area/4.1/loginArea.php?chave=475e84fb0088c2e712ad9bda5b1dd5a5a9e9aed3bac853c06784eb413d687b75123f189055bdedb78fa3cc6cfa86e9c88ec5653ce4c8b33f69ba9e63d8c1c100"
        >Área do associado</a
      >
    </v-col>
    <v-col cols="2" class="mt-2" style="color: #fff">
      <v-icon>mdi-magnify</v-icon>
      <a
        style="color: #fff !important"
        href="https://api.whatsapp.com/send/?phone=554733042028&text&app_absent=0"
      >
        Precisa de ajuda?
      </a>
    </v-col>
    <v-col cols="2">
      <v-btn
        class="ml-2"
        style="background: #002cba"
        @click="
          openLink(
            'https://api.whatsapp.com/send/?phone=554733042028&text&app_absent=0'
          )
        "
        icon
        fab
        small
      >
        <v-icon color="002CBA" style="color: #fff">mdi-whatsapp</v-icon>
      </v-btn>
      <v-btn
        class="ml-2"
        style="background: #002cba"
        @click="
          openLink(
            'https://www.instagram.com/maxxprotege/?utm_medium=copy_link'
          )
        "
        icon
        fab
        small
      >
        <v-icon style="color: #fff">mdi-instagram</v-icon>
      </v-btn>
      <v-btn
        class="ml-2"
        style="background: #002cba"
        @click="openEmail()"
        icon
        fab
        small
      >
        <v-icon style="color: #fff">mdi-email-outline</v-icon>
      </v-btn>
    </v-col>
  </v-row>
</template>

<script>
export default {
  methods: {
    openLink(url) {
      window.open(url, '_blank')
    },
    openEmail() {
      window.open(
        'mailto:gerenciacomercial@maxxprotege.com.br?subject=Subject&body=message%20goes%20here'
      )
    },
  },
}
</script>

<style>
i.v-icon.v-icon {
  color: white;
}
</style>
