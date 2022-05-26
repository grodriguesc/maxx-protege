<template>
  <v-row justify="center" class="ml-0 pl-0">
    <v-col class="ma-0 pa-0" align="center">
      <v-row class="bg-home">
        <v-col cols="3"></v-col>
        <v-col style="text-align: left" align-self="center" cols="6">
          <h1 style="font-size: 90px; color: #002cba">Proteção</h1>
          <h1 style="font-size: 90px; color: #002cba; margin-top: -40px;">Veicular</h1>
          <h2 style="color: #002cba; font-weight: 400">
            mais completa e com o <br />
            melhor custo benefício!
          </h2>
          <v-btn @click="
                  openLink(
                    'https://api.whatsapp.com/send/?phone=554733042028&text&app_absent=0'
                  )
                " class="white--text mt-3" color="#FE652C"
            >Faça uma cotação</v-btn
          >
        </v-col>
      </v-row>
      <v-row id="cotacao" justify="center" class="mt-5">
        <v-col cols="4">
          <v-card>
            <div>
              <h2 class="pt-5" style="color: #002cba; text-align: center">
                Faça uma cotação online
              </h2>
            </div>
            <div style="color: #002cba">
              <v-col>
                <p style="text-align: center">
                  Faça uma cotação agora mesmo e garanta a devida proteção para
                  seu veículo.
                </p>
              </v-col>

              <v-col>
                <b>Nome:</b>
                <v-text-field v-model="mailInfo.name" outlined></v-text-field>
              </v-col>

              <v-col>
                <b>Cidade:</b>
                <v-text-field v-model="mailInfo.city" outlined></v-text-field>
              </v-col>

              <v-col>
                <b>Bairro:</b>
                <v-text-field  v-model="mailInfo.neighborhood" outlined></v-text-field>
              </v-col>

              <v-col>
                <b>E-mail:</b>
                <v-text-field v-model="mailInfo.mail" outlined></v-text-field>
              </v-col>

              <v-col>
                <b>Whatsapp:</b>
                <v-text-field v-model="mailInfo.whatsapp" outlined></v-text-field>
              </v-col>
              <v-col cols="8">
                <v-row justify="center" class="mb-2">
                  <v-btn @click="sendMail()" color="#FE652C" large block class="white--text"
                    >Enviar Dados</v-btn
                  >
                </v-row>
              </v-col>
            </div>
          </v-card>
        </v-col>
        <v-col
          cols="4"
          style="z-index: 1; margin-left: -2%"
          align-self="center"
        >
          <img
            style="z-index: 1"
            src="~/static/images/banner-vem-de-maxx.svg"
          />
        </v-col>
      </v-row>

      <v-row justify="center" class="bg" id="curiosidades">
        <v-col align-self="center" cols="7">
          <v-row justify="left">
            <h1 style="text-align: left">
              <i class="white--text" style="font-size: 40px">
                Fale com um de nossos <br />
                representantes!
              </i>
            </h1>
          </v-row>

          <v-row justify="left">
            <v-col cols="5" class="white--text">
              <p style="font-size: 20px; text-align: left">
                Na Maxx Protege você conta com o serviço de guincho e transporte
                com quilometragem ilimitada em casos de pane do veículo.
              </p>
            </v-col>
          </v-row>

          <v-row justify="left">
            <v-col cols="5">
              <v-btn
                @click="
                  openLink(
                    'https://api.whatsapp.com/send/?phone=554733042028&text&app_absent=0'
                  )
                "
                class="white--text"
                large
                color="#FE652C"
                >Entre em contato</v-btn
              >
            </v-col>
          </v-row>
        </v-col>
      </v-row>

      <v-row justify="center" class="my-5" id="so-a-maxx">
        <v-col>
          <v-row justify="center">
            <h1 style="font-size: 50px; color: #002cba" class="my-5">
              Na Maxx você tem
            </h1>
          </v-row>
          <v-row justify="center" class="my-5">
            <v-card
            id="cardText"
              style="transition: width 1s, height 1s"
              @mouseover="growCard = true"
              @mouseleave="growCard = false"
              :width="growCard == true ? '444px' : '222px'"
              :height="growCard == true ? '350px' : '284px'"
              class="ma-5"
            >
              <div style="color: #f26531">
                <v-col class="fill-height" align="center">
                  <img class="mt-5" src="../static/icons/icon-car.svg" />
                  <p v-if="showText" class="mt-5">
                     Até 200 mil<br />
                      contra terceiros
                  </p>
                  <p class="mt-5" style="text-align: center">
                    <b>
                      Até 200 mil<br />
                      contra terceiros
                    </b>
                  </p>
                </v-col>
              </div>
            </v-card>

            <v-card
              width="222px"
              class="ma-5"
              id="cardTex1"
              style="transition: width 1s, height 1s"
              @mouseover="growCard1 = true"
              @mouseleave="growCard1 = false"
              :width="growCard1 == true ? '444px' : '222px'"
              :height="growCard1 == true ? '350px' : '284px'"
            >
              <div style="color: #f26531">
                <v-col class="fill-height" align="center">
                  <img class="mt-5" src="../static/icons/icon-guincho.png" />
                  <p v-if="showText1" class="mt-5">
                    Quilometragem ilimitada na<br />
                    região Sul do Brasil para pane mecânica<br />
                    ou elétrica.
                  </p>
                  <p class="mt-5" style="text-align: center">
                    <b>
                      Guincho e <br />
                      transporte com km <br />
                      ilimitada para pane
                    </b>
                  </p>
                </v-col>
              </div>
            </v-card>

            <v-card
              width="222px"
              class="ma-5"
              id="cardText2"
              style="transition: width 1s, height 1s"
              @mouseover="growCard2 = true"
              @mouseleave="growCard2 = false"
              :width="growCard2 == true ? '444px' : '222px'"
              :height="growCard2 == true ? '350px' : '284px'"
            >
              <div style="color: #f26531">
                <v-col class="fill-height" align="center">
                  <img class="mt-5" src="../static/icons/icon-motor.png" />
                  <p v-if="showText2" class="mt-5">
                    só a maxx tem proteção para <br />
                    o câmbio do seu carro
                  </p>
                  <p class="mt-5" style="text-align: center">
                    <b> Proteção para <br />motor e câmbio </b>
                  </p>
                </v-col>
              </div>
            </v-card>

            <v-card
              width="222px"
              class="ma-5"
              id="cardText3"
              style="transition: width 1s, height 1s"
              @mouseover="growCard3 = true"
              @mouseleave="growCard3 = false"
              :width="growCard3 == true ? '444px' : '222px'"
              :height="growCard3 == true ? '350px' : '284px'"
            >
              <div style="color: #f26531">
                <v-col class="fill-height" align="center">
                  <img class="mt-5" src="../static/icons/icon-fipe.png" />
                  <p v-if="showText3" class="mt-5">
                    100% da tabela FIPE no seu veículo
                  </p>
                  <p class="mt-5" style="text-align: center">
                    <b> 100% da tabela <br />FIPE </b>
                  </p>
                </v-col>
              </div>
            </v-card>
          </v-row>
          <v-row>
        <v-col>
          <v-btn @click="
                openLink(
                  'https://api.whatsapp.com/send/?phone=554733042028&text&app_absent=0'
                )
              " class="white--text" color="#FE652C">Fale com um representante</v-btn>
        </v-col>
          </v-row>
        </v-col>
      </v-row>

      <v-row id="beneficios" justify="center" style="z-index: 1">
        <img src="~/static/images/banner-beneficios.png" style="z-index: 1" />
      </v-row>

      <v-row justify="center" style="z-index: 0">
        <v-col cols="2" style="z-index: 0">
          <img
            class="arrow-left"
            width="27.5%"
            src="~/static/images/arrow.svg"
          />
        </v-col>
        <v-col cols="4" style="z-index: 1" class="mt-5 mr-5">
          <img
            class="mt-5 maxx-funcionarios"
            src="~/static/images/maxx-funcionarios-banner.png"
          />
        </v-col>
        <v-col cols="3" class="mt-5 ml-5 quem-somos" style="">
          <h1 style="color: #002cba">Quem somos?</h1>
          <p class="mt-4" style="color: #002cba; font-size: 18px">
            Somos uma <b>Associação</b> nascida em Blumenau, totalmente focada
            no bom relacionamento e economia do associado, levando segurança e
            bem estar à nível nacional.
          </p>
          <p class="mt-4" style="color: #002cba; font-size: 18px">
            Abrimos as portas para todos que acreditam, assim como nós, que
            possam ter a oportunidade de possuir uma <b>proteção veicular</b> a
            um preço acessível, com isso, a
            <b>única avaliação feita é do veículo</b>, não considerando o perfil
            do condutor nem consultas de crivo (SERASA/SPC).
          </p>
          <p class="mt-4" style="color: #002cba; font-size: 18px">
            Sendo assim, o nosso compromisso de garantir proteção e
            tranquilidade é com você, associado, desempenhando um papel em
            conjunto através da agilidade, qualidade e confiança, passa assim
            viver a vida que precisa.
          </p>
        </v-col>
        <v-col style="z-index: 0">
          <img
            class="arrow-right"
            width="27.5%"
            src="~/static/images/arrow.svg"
          />
        </v-col>
      </v-row>

      <v-row class="bg-rodape mb-0 pb-0" justify="center">
        <v-col class="my-3" cols="12">
          <h2 class="white--text" style="font-size: 42px">
            <i>Onde nos encontrar?</i>
          </h2>
        </v-col>
        <v-col cols="2" align="center">
          <img src="../static/icons/maxx-icon-footer.png" />
        </v-col>

        <v-col cols="2" align="center" class="mt-5">
          <div>
            <v-btn
              class="ml-2 mt-5"
              @click="
                openLink(
                  'https://api.whatsapp.com/send/?phone=554733042028&text&app_absent=0'
                )
              "
              style="background: #fff"
              icon
              fab
              large
            >
              <v-icon size="40" style="color: #002cba">mdi-whatsapp</v-icon>
            </v-btn>
            <v-btn
              @click="openLink('https://www.facebook.com/maxxprotege')"
              class="ml-2 mt-5"
              style="background: #fff"
              icon
              fab
              large
            >
              <v-icon size="40" style="color: #002cba">mdi-facebook</v-icon>
            </v-btn>
            <v-btn class="ml-2 mt-5" style="background: #fff" icon fab large>
              <v-icon
                size="40"
                @click="
                  openLink(
                    'https://www.instagram.com/maxxprotege/?utm_medium=copy_link'
                  )
                "
                style="color: #002cba"
                >mdi-instagram</v-icon
              >
            </v-btn>
          </div>
        </v-col>

        <v-col cols="2" align="center" class="white--text mt-5">
          <h2 class="mb-3">Matriz - Blumenau/SC</h2>
          <p>
            Rod. Paul Fritz Kuehnrich, 990 <br />
            Itoupava Norte
          </p>
          <h2>(47) 3304-2028</h2>
        </v-col>
        <v-col cols="8">
          <v-divider inset style="border-color: #fff !important"></v-divider>
        </v-col>
      </v-row>

      <v-row id="localidades" class="bg-rodape white--text" justify="center">
        <v-col cols="2" align="center">
          <h4 class="mb-3">Blumenau/SC</h4>
          <p>
            R. Dr. Pedro Zimmermann, 2371 <br />
            Itoupavazinha
          </p>
          <p><b>(47) 98474-5597</b> ou <br /><b>(47) 99672-3910</b></p>
        </v-col>

        <v-col cols="2" align="center">
          <h4 class="mb-3">Blumenau/SC</h4>
          <p>
            R. Francisco Vahldieck, 2579 <br />
            Fortaleza
          </p>
          <p><b>(47) 99184-5050</b></p>
        </v-col>

        <v-col cols="2" align="center">
          <h4 class="mb-3">Blumenau/SC</h4>
          <p>
            R. Amazonas, 4160 - Sala 02 <br />
            Garcia
          </p>
          <p>
            <b>(47) 3288-9020</b> ou <br />
            <b>(47) 99955-3249</b>
          </p>
        </v-col>

        <v-col cols="2" align="center">
          <h4 class="mb-3">Brusque/SC</h4>
          <p>
            R. Alberto Knop, 100 <br />
            Jardim Maluche
          </p>
          <p>
            <b>(47) 3252-1686</b> ou <br />
            <b>(47) 98839-9590</b> ou <b>99672-38188</b>
          </p>
        </v-col>
        <v-col cols="8">
          <v-divider inset style="border-color: #fff !important"></v-divider>
        </v-col>
      </v-row>

      <v-row class="bg-rodape white--text pb-5" justify="center">
        <v-col cols="2" align="center">
          <h4 class="mb-3">Indaial/SC</h4>
          <p>
            Av. Manoel Simão, 131 - Sala <br />
            01 Nações</p>
          </p>
          <p>
            <b>(47) 3387-2424</b> ou<br />
            <b>(47) 99142-6211</b> ou <b>98909-5401</b>
          </p>
        </v-col>

        <v-col cols="2" align="center">
          <h4 class="mb-3">Ituporanga/SC</h4>
          <p>
            R. Vergílio Scheller, 2140 - Sala 03 <br />
            Gabiroba
          </p>
          <p>
            <b>(47) 99210-5541</b> ou <br />
            <b>(47) 99969-1189</b>
          </p>
        </v-col>

        <v-col cols="2" align="center">
          <h4 class="mb-3">Jaraguá/SC</h4>
          <p>
            R. Carlos Eggert, 171 <br />
            Vila Lalau
          </p>
          <p>
            <b>(47) 99602-8673</b> ou<br />
            <b>(47) 99674-0015</b>
          </p>
        </v-col>

        <v-col cols="2" align="center">
          <h4 class="mb-3">Taió/SC</h4>
          <p>
            R. Coronel Feddersen, 2120 <br />
            Centro
          </p>
          <p>
            <b>(47) 99627-4255</b> ou <br />
            <b>(47) 99969-1167</b>
          </p>
        </v-col>
      </v-row>
    </v-col>
  </v-row>
</template>

<script>
export default {
  name: 'IndexPage',
  data() {
    return {
      growCard: false,
      growCard1: false,
      growCard2: false,
      growCard3: false,
      showText: false,
      showText1: false,
      showText2: false,
      showText3: false,
      mailInfo: {
        name: '',
        city: '',
        neighborhood: '',
        email: '',
        whatsapp: '',
      }
    }
  },
watch: {
    growCard(oldVal) {
      if(document.getElementById("cardText").style.height != "350px"){
        this.showText = true
      }else{
        this.showText = false
      }
    },
    growCard1(oldVal) {
     if(document.getElementById("cardText1").style.height != "350px"){
        this.showText1 = true
      }else{
        this.showText1 = false
      }
    },
    growCard2(oldVal) {
      if(document.getElementById("cardText2").style.height != "350px"){
        this.showText2 = true
      }else{
        this.showText2 = false
      }
    },
    growCard3(oldVal) {
      if(document.getElementById("cardText3").style.height != "350px"){
        this.showText3 = true
      }else{
        this.showText3 = false
      }
    },
  },
  methods: {
    openLink(url) {
      window.open(url, '_blank')
    },
    sendMail() {
      window.open(
        `mailto:gerenciacomercial@maxxprotege.com.br?subject=Cotação%20Site&body=Nome:%20${this.mailInfo.name}%20Cidade:%20${this.mailInfo.city}%Bairro:%20${this.mailInfo.neighborhood}%E-mail:%20${this.mailInfo.mail}%20Nome:%20${this.mailInfo.whatsapp}`
      )
    },
  },
}
</script>

<style scoped>
.arrow-left {
  position: fixed;
  left: -13%;
  top: 75px;
  z-index: 0;
}
.arrow-right {
  position: fixed;
  right: -14%;
  top: 75px;
  z-index: 0;
}

.quem-somos {
  text-align: justify;
  margin-right: -30%;
}
.bg {
  background: url('../static/images/banner-guincho.png') no-repeat center center;
  height: 20%;
  position: relative;
  z-index: 2 !important;
}
.bg-home {
  background: url('../static/images/bannerHome.png') no-repeat center center;
  height: 15%;
  position: relative;
  z-index: 2 !important;
}
.bg-rodape {
  background: #01228c no-repeat center center;
  margin-top: 0;
  position: relative;
  z-index: 2 !important;
}
</style>
