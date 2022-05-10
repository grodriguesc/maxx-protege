<template>
  <v-row justify="center" style="color: #01228c">
    <v-col cols="2" class="py-5 mt-3">
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
    </v-col>

    <v-col cols="2" class="py-5 mt-3">
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
    </v-col>

    <v-col cols="2" class="py-5 mt-3">
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

    <v-col align="center" cols="4" class="py-5">
      <img class="mt-2" height="70%" src="~/static/icons/max-icon.svg" />
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
