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

class DestinationCarouselInter extends StatelessWidget {
  final List<Destination> destinations = [
    Destination(
        "Fernandão",
        "Beira Rio",
        4.7,
        "assets/porto_alegre/inter/inter5.png",
        "Em 2004, na sua primeira partida pelo Internacional contra o Grêmio, marcou o gol 1000° em Grenais, na vitória do Inter por 2-0. Em 2005, ajudou o clube gaúcho a conquistar o tetracampeonato estadual, sendo um dos destaques da competição. No mesmo ano, liderou o Inter ao polêmico vice-campeonato brasileiro, onde foi eleito o segundo melhor jogador de sua posição, no Prêmio Craque do Brasileirão. "),
    Destination(
        "História",
        "Beira Rio",
        4.9,
        "assets/porto_alegre/inter/beira2.png",
        "O Estádio José Pinheiro Borda, conhecido como Gigante da Beira-Rio ou simplesmente Beira-Rio, é um estádio de futebol localizado às margens do lago Guaíba no município de Porto Alegre, Brasil. Pertencente ao Sport Club Internacional, sua capacidade oficial é para 50 128 torcedores, sendo o 10º maior estádio do Brasil.[5][6] O Beira-Rio foi inaugurado oficialmente em 6 de abril de 1969 numa partida amistosa entre a equipe do Internacional e o Benfica, de Portugal, para um público de mais de 100 mil pessoas. O jogo acabou em 2 a 1 para o time brasileiro, uma vitória histórica contra uma das melhores equipes da época."),
    Destination(
        "Campeão Mundial",
        "Beira Rio",
        4.3,
        "assets/porto_alegre/inter/inter.png",
        "O Internacional é campeão do mundo!!! A equipe colorada venceu o Barcelona por 1 a 0 na grande final do Mundial Fifa, na manhã do último domingo (17/12), em Yokohama, no Japão. Adriano, que havia entrado no lugar de Fernandão, marcou o gol do título aos 36min do segundo tempo e colocou o Inter no seleto grupo dos campeões do mundo.."),
    Destination(
        "Nova Aparência",
        "Beira Rio",
        4.8,
        "assets/porto_alegre/inter/inter4.png",
        "No domingo, 24 de dezembro de 2010, parte da arquibancada inferior começou a ser desmontada, reduzindo assim a capacidade de público do estádio na temporada 2011. Depois disso, o clube decidiu mudar a forma de financiamento da obra que seria feita com recursos próprios, para uma parceria com uma construtora, pois o dinheiro em caixa não era suficiente. No dia 19 de março de 2012, foi assinado o contrato de parceria com o Grupo Andrade Gutierrez.[14] A obra é totalmente executada com recursos privados, com exceção de uma parte de calçamento e drenagem em área pública, pertencente à Prefeitura de Porto Alegre. A capacidade oficial do Gigante da Beira-Rio passou a ser de 50 128 pessoas.[5] Com o novo Beira-Rio, o Internacional tornou-se o único clube do futebol brasileiro a sediar duas Copas do Mundo."),
    
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
