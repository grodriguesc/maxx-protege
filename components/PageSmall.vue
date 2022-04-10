<template>
  <v-row wrap>
    <v-col >
      <v-row justify="center">
        <img
          width="90%"
          class="mt-5 maxx-funcionarios"
          src="~/static/images/maxx-funcionarios.png"
        />
      </v-row>

      <v-row class="mt-5 quem-somos" justify="center">
        <v-col>
          <h1 style="color: #002cba">Quem somos?</h1>
        <p class="mt-4" style="color: #002cba; font-size: 16px">
          Somos uma <b>Associação</b> nascida em Blumenau, totalmente focada no
          bom relacionamento e economia do associado, levando segurança e bem
          estar à nível nacional.
        </p>
        <p class="mt-4" style="color: #002cba; font-size: 16px">
          Abrimos as portas para todos que acreditam, assim como nós, que possam
          ter a oportunidade de possuir uma <b>proteção veicular</b> a um preço
          acessível, com isso, a <b>única avaliação feita é do veículo</b>, não
          considerando o perfil do condutor nem consultas de crivo (SERASA/SPC).
        </p>
        <p class="mt-4" style="color: #002cba; font-size: 16px">
          Sendo assim, o nosso compromisso de garantir proteção e tranquilidade
          é com você, associado, desempenhando um papel em conjunto através da
          agilidade, qualidade e confiança, passa assim viver a vida que
          precisa.
        </p>
        </v-col>
      </v-row>

      <v-row justify="center" style="z-index: 1; margin-top: 10%">
        <img
          width="100%"
          src="~/static/images/banner-beneficios-small.png"
          style="z-index: 1"
        />
      </v-row>

      <v-row justify="center" style="margin-top: 10%">
        <v-col cols="10">
          <v-card>
            <div>
              <h2 style="color: #002cba; text-align: center">
                Faça uma cotação online
              </h2>
            </div>
            <div style="color: #002cba">
              <v-col cols="">
                <p style="text-align: center">
                  Faça uma cotação agora mesmo e garanta a devida proteção para
                  seu veículo.
                </p>
              </v-col>

              <v-col>
                <b>Nome:</b>
                <v-text-field outlined></v-text-field>
              </v-col>

              <v-col>
                <b>Cidade ou Bairro:</b>
                <v-text-field outlined></v-text-field>
              </v-col>

              <v-col>
                <b>E-mail:</b>
                <v-text-field outlined></v-text-field>
              </v-col>

              <v-col>
                <b>Whatsapp:</b>
                <v-text-field outlined></v-text-field>
              </v-col>
              <v-col>
                <v-row justify="center" class="mb-2">
                  <v-btn color="#FE652C" large class="white--text"
                    >Enviar Dados</v-btn
                  >
                </v-row>
              </v-col>
            </div>
          </v-card>
        </v-col>

        <v-row style="z-index: 1" justify="center">
          <img
            style="z-index: 1"
            width="80%"
            src="~/static/images/banner-vem-de-maxx-small.png"
          />
        </v-row>
      </v-row>

      <v-col justify="center" class="bg" style="text-align: center">
        <v-row>
          <img width="100%" src="~/static/images/maxx-elipse.png" />
        </v-row>
        <v-row justify="center" class="mb-5">
          <h3>
            <i class="white--text" style="font-size: 30px">
              A Maxx tem guincho <br />
              com km ilimitada
            </i>
          </h3>
        </v-row>
        <v-row justify="center" >
          <v-col cols="8" class="white--text">
            <p style="font-size: 12px">
              Na Maxx Protege você conta <br />
              com o serviço de guincho e<br />
              transporte com quilometragem <br />
              ilimitada em casos de pane do veículo.
            </p>
          </v-col>
        </v-row>
        <v-row justify="center" class="mb-5">
          <v-btn
            class="white--text"
            color="#FE652C"
            @click="
              openLink(
                'https://api.whatsapp.com/send/?phone=554733042028&text&app_absent=0'
              )
            "
            >Monte seu plano</v-btn
          >
        </v-row>
      </v-col>

      <v-row justify="center" class="mb-5 pb-5 mt-0 pt-0">
        <v-col>
          <v-row justify="center">
            <h1 style="font-size: 40px; color: #002cba">Na Maxx você tem</h1>
          </v-row>
          <v-row justify="center">
            <v-card width="222px" class="ma-5">
              <div style="color: #f26531">
                <v-col class="fill-height" align="center">
                  <img class="mt-5" src="../static/icons/icon-car.png" />
                  <p class="mt-5" style="text-align: center">
                    Motorista <br />da rodada
                  </p>
                </v-col>
              </div>
            </v-card>

            <v-card width="222px" class="ma-5">
              <div style="color: #f26531">
                <v-col class="fill-height" align="center">
                  <img class="mt-5" src="../static/icons/icon-guincho.png" />
                  <p class="mt-5" style="text-align: center">
                    Guincho e transporte com km ilimitada para pane
                  </p>
                </v-col>
              </div>
            </v-card>
          </v-row>
          <v-row justify="center">
            <v-card width="222px" class="ma-5">
              <div style="color: #f26531">
                <v-col class="fill-height" align="center">
                  <img class="mt-5" src="../static/icons/icon-motor.png" />

                  <p class="mt-5" style="text-align: center">
                    Proteção para <br />motor e câmbio
                  </p>
                </v-col>
              </div>
            </v-card>

            <v-card width="222px" class="ma-5">
              <div style="color: #f26531">
                <v-col class="fill-height" align="center">
                  <img class="mt-5" src="../static/icons/icon-fipe.png" />

                  <p class="mt-5" style="text-align: center">
                    100% da tabela <br />FIPE
                  </p>
                </v-col>
              </div>
            </v-card>
          </v-row>
        </v-col>
      </v-row>

      <v-row class="bg-rodape mt-5 pt-5" justify="center">
        <v-col align="center">
          <img width="90%" src="../static/icons/maxx-icon-footer.png" />
        </v-col>
        <v-divider
          inset
          vertical
          style="border-color: #fff !important"
        ></v-divider>

        <v-col align="center" class="white--text mt-5">
          <h4 class="mb-3">Matriz - Blumenau/SC</h4>
          <p style="font-size: 12px !important">
            Rod. Paul Fritz Kuehnrich, 990 <br />
            Itoupava Norte
          </p>
          <h4>(47) 3304-2028</h4>
        </v-col>

        <v-col cols="12" style="margin-left: -13%">
          <v-divider inset style="border-color: #fff !important"></v-divider>
        </v-col>
      </v-row>

      <v-row class="bg-rodape white--text" justify="center">
        <v-col align="center">
          <h4 class="mb-3">Blumenau/SC</h4>
          <p style="font-size: 12px">
            R. Dr. Pedro Zimmermann, 2371 <br />
            Itoupavazinha
          </p>
          <p style="font-size: 12px">
            <b>(47) 98474-5597</b> ou <br /><b>(47) 99672-3910</b>
          </p>
        </v-col>
        <v-divider
          inset
          vertical
          style="border-color: #fff !important"
        ></v-divider>
        <v-col align="center" class="ma-0">
          <h4 class="mb-3">Blumenau/SC</h4>
          <p style="font-size: 12px">
            R. Francisco Vahldieck, 2579 <br />
            Fortaleza
          </p>
          <p style="font-size: 12px"><b>(47) 99184-5050</b></p>
        </v-col>

        <v-col cols="12" style="margin-left: -13%">
          <v-divider inset style="border-color: #fff !important"></v-divider>
        </v-col>
      </v-row>

      <v-row class="bg-rodape white--text" justify="center">
        <v-col align="center">
          <h4 class="mb-3">Blumenau/SC</h4>
          <p style="font-size: 12px">
            R. Amazona, 4160 - Sala 02 <br />
            Garcia
          </p>
          <p style="font-size: 12px">
            <b>(47) 3288-9020</b> ou <br />
            <b>(47) 99955-3249</b>
          </p>
        </v-col>
        <v-divider
          inset
          vertical
          style="border-color: #fff !important"
        ></v-divider>
        <v-col align="center">
          <h4 class="mb-3">Brusque/SC</h4>
          <p style="font-size: 12px">
            R. Alberto Knop, 100 <br />
            Jardim Maluche
          </p>
          <p style="font-size: 12px">
            <b>(47) 3252-1686</b> ou <br />
            <b>(47) 98839-9590</b> ou <b>99672-38188</b>
          </p>
        </v-col>

        <v-col cols="12" style="margin-left: -13%">
          <v-divider inset style="border-color: #fff !important"></v-divider>
        </v-col>
      </v-row>

      <v-row class="bg-rodape white--text pb-5" justify="center">
        <v-col align="center">
          <h4 class="mb-3">Indaial/SC</h4>
          <p style="font-size: 12px">
            Av. Manoel Simão, 131 - Sala <br />
            01 Nações </p>
          </p>
          <p style="font-size: 12px">
            <b>(47) 3387-2424</b> ou<br />
            <b>(47) 99142-6211</b> ou <b>98909-5401</b>
          </p>
        </v-col>
        <v-divider
          inset
          vertical
          style="border-color: #fff !important"
        ></v-divider>
        <v-col align="center">
          <h4 class="mb-3">Ituporanga/SC</h4>
          <p style="font-size: 12px">
            R. Vergílio Scheller, 2140 - Sala 03 <br />
            Gabiroba
          </p>
          <p style="font-size: 12px">
            <b>(47) 99210-5541</b> ou <br />
            <b>(47) 99969-1189</b>
          </p>
        </v-col>
        <v-col cols="12" style="margin-left: -13%">
          <v-divider inset style="border-color: #fff !important"></v-divider>
        </v-col>
      </v-row>
      <v-row class="bg-rodape white--text pb-5" justify="center">
        <v-col align="center">
          <h4 class="mb-3">Jaraguá/SC</h4>
          <p style="font-size: 12px">
            R. Carlos Eggert, 171 <br />
            Vila Lalau
          </p>
          <p style="font-size: 12px">
            <b>(47) 99602-8673</b> ou<br />
            <b>(47) 99674-0015</b>
          </p>
        </v-col>
        <v-divider
          inset
          vertical
          style="border-color: #fff !important"
        ></v-divider>
        <v-col align="center">
          <h4 class="mb-3">Taió/SC</h4>
          <p style="font-size: 12px">
            R. Coronel Feddersen, 2120 <br />
            Centro
          </p>
          <p style="font-size: 12px">
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

<style scoped>
.quem-somos {
  text-align: center;
}
.bg {
  background: url('../static/images/background-guincho-small.png') no-repeat
    center center;
  margin-top: 10%;
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
