import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_rs/cidades/porto_alegre/places/cais/model/destinationDetail.dart';


class Destination {
  final String title;
  final String date;
  final String photo;
  final double rating;
  final String description;
  Destination(
      this.title, this.date, this.rating, this.photo, this.description);
}

class DestinationCarouselGremio extends StatelessWidget {
  final List<Destination> destinations = [
    Destination(
        "Estadio do Grêmio",
        "Arena do Grêmio",
        4.7,
        "assets/porto_alegre/gremio/gremio2.png",
        "Grêmio. O Grêmio Foot-Ball Porto Alegrense foi fundado em 15 de setembro de 1903, em um restaurante da região central de Porto Alegre. A equipe venceu o primeiro campeonato que disputou, a Taça Wanderpreiss, em 1905 - que voltaria a ganhar em outras sete oportunidades."),
    Destination(
        "Estatua do Renato",
        "Arena do Grêmio",
        4.9,
       "assets/porto_alegre/gremio/estatua.png",
        "Depois dos inúmeros títulos e as súplicas públicas sempre bem-humoradas, o Grêmio inaugurou a estátua de Renato Gaúcho na esplanada da Arena. O maior ídolo da história do clube ganhou uma peça em bronze, erguida a mais de quatro metros em frente ao estádio."),
    Destination(
        "Geral do Gremio",
        "Arena do Grêmio",
        4.3,
        "assets/porto_alegre/gremio/gremio.png",
        "A Geral do Grêmio é a torcida percursora no Brasil nos padrões barra brava, estilo típico de torcidas da América do Sul. Já foi conhecida, erroneamente, pelo nome de Alma Castelhana. Influenciados por ela, surgiram dezenas de outros movimentos semelhantes de torcedores de grandes clubes do futebol brasileiro. Sua mobilização e apoio no ano de 2005 foi fundamental para o retorno do Grêmio à Série A do Campeonato Brasileiro. Ao fundo a Geral do Grêmio A Geral do Grêmio é uma das maiores barra bravas do Brasil no que tange a número de torcedores: são cerca de 5.500 gremistas que ocupam o espaço destinado à mesma todos os jogos na Arena do Grêmio. Com o crescimento da torcida, um filme sobre a Geral do Grêmio foi gravado no ano de 2012, com seu lançamento sendo realizado no pátio do Estádio Olímpico Monumental em uma tarde de jogo do Grêmio."),
    Destination(
        "Inalgurção da Arena",
        "Arena do Grêmio",
        5.0,
        "assets/porto_alegre/gremio/gremio1.png",
        "Mais de 60 mil pessoas assistiram a inauguração da Arena do Grêmio no dia 8 de dezembro do ano passado. Tal público jamais será repetido. Com a colocação de barreiras de ferro na arquibancada impedindo a comemoração conhecida como 'avalanche', o estádio gremista perdeu mais de 5 mil lugares em sua capacidade total. 'Encolhendo', a casa gremista nunca receberá tanta gente de novo."),
        Destination(
        "Copa Libertadores",
        "Arena do Grêmio",
        4.2,
        "assets/porto_alegre/gremio/gremio4.png",
        "O Grêmio do Brasil se sagrou campeão da CONMEBOL Libertadores Bridgestone na noite desta quarta-feira ao derrotar o argentino Lanús por 2-1, no estádio La Fortaleza frente a 45.000 torcedores ao sul de Buenos Aires. Foi uma festa completa do tricolor de Porto Alegre. Fernandinho  fez um gol aos 27' com uma canhota destruidora, e Luan aos 42' com uma jogada sonhadora, com toque suave por cima do goleiro Esteban Andrada. Luan foi escolhido o melhor jogador da CONMEBOL Sul-Americana 2017. Aos 72 minutos o Pepegol marcou um gol de pênalti. Aproximadamente 4.500 torcedores gaúchos deliraram nas arquibancadas com a maestria e solidez do campeão. Foi o corolário perfeito da vantagem por 1-0 estabelecida na partida de ida na Arena do Grêmio, com gol de Cícero."),
        Destination(
        "Restaurante panorâmico",
        "Arena do Grêmio",
        4.0,
        "assets/porto_alegre/gremio/olimpico.jpg",
        "O Estádio Olímpico Monumental é um estádio brasileiro de futebol situado na cidade de Porto Alegre, Rio Grande do Sul, de propriedade do Grêmio Foot-Ball Porto Alegrense. Foi inaugurado no dia 19 de setembro de 1954, com um torneio. Encontra-se desativado desde a conclusão da Arena do Grêmio"),
  ];

  List<Widget> renderDestinations() {
    final r = destinations.map((d) => DestinationCard(data: d)).toList();
    print(r);
    return r;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: SizedBox(
                height: 225,
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    scrollDirection: Axis.horizontal,
                    itemCount: destinations.length,
                    itemBuilder: (context, int index) =>
                        DestinationCard(data: destinations[index]))),
          ),
        ]);
  }
}

class DestinationCard extends StatelessWidget {
  const DestinationCard({
    @required this.data,
  });

  final Destination data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
        Navigator.of(context).push(
          PageRouteBuilder(pageBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return Detail(data.photo, data.title, data.description);
          }, transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(opacity: animation, child: child);
          }),
        );
      },
      child: Container(
          margin: EdgeInsets.only(right: 10),
          width: 150,
          child: Stack(children: <Widget>[
            Hero(
              tag: "detailHero${data.title}",
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.7), BlendMode.dstATop),
                        fit: BoxFit.cover,
                        image: AssetImage(data.photo))),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          data.rating.toString(),
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(bottom: 7),
                              child: Text(data.title,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ))),
                          Container(
                            child: Text(
                              data.date,
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ])
                  ]),
            )
          ])),
    );
  }
}
