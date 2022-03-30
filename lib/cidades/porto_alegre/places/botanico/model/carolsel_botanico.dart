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

class DestinationCarouselBotanico extends StatelessWidget {
  final List<Destination> destinations = [
    Destination(
        "Visitas",
        "Jardim Bôtanico",
        4.7,
        "assets/porto_alegre/botanico/botanico1.png",
        "O Jardim Botânico se dedica ao estudo e à conservação de espécies vegetais nativas do Rio Grande do Sul, principalmente àquelas ameaçadas de extinção. Para cumprir sua missão desenvolve atividades de pesquisa, conservação e educação ambiental."),
    Destination(
        "História",
        "Jardim Bôtanico",
        4.9,
       "assets/porto_alegre/botanico/botanico2.png",
        "Em 1953, foi aprovada a lei nº 2136 que destinava uma área de terra para criação de um Jardim Botânico na cidade de Porto Alegre. Na época, o governador Ildo Meneghetti criou uma comissão para propor a concepção inicial do parque. Tal estudo foi apresentado em 1956, sendo que o Irmão Teodoro Luis foi nomeado para dirigir os trabalhos de implantação. Em 10 de setembro de 1958 o Jardim Botânico foi aberto ao público."),
    Destination(
        "Maravilhoso",
        "Jardim Bôtanico",
        4.3,
        "assets/porto_alegre/botanico/botanico4.png",
        "Possui uma área de 39 hectares onde os visitantes podem percorrer as várias trilhas do arboreto (coleção de árvores), fazer piqueniques, apreciar os cenários dos lagos e canteiros de flores. Além do lazer, podem aprender sobre a flora nativa do RS, participar de atividades educativas e adquirirem mudas de árvores gaúchas no viveiro de vendas."),
    Destination(
        "Vendas de Mudas",
        "Jardim Bôtanico",
        5.0,
        "assets/porto_alegre/botanico/botanico3.png",
        "O Jardim Botânico, através de seu Setor de Viveiro, disponibiliza para comercialização, conforme relação abaixo, 100 espécies de mudas florestais nativas do RS (frutíferas e ornamentais) e medicinais, com preço de  5,00 a  80,00."),

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
