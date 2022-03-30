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

class DestinationCarouselQuintana extends StatelessWidget {
  final List<Destination> destinations = [
    Destination(
        "História",
        "Mario Quintana",
        4.7,
        "assets/porto_alegre/quintana/mario1.png",
        "A história da Casa de Cultura Mario Quintana tem início em julho de 1980, com a compra do antigo prédio do Hotel Majestic, pelo Banrisul. Em 29 de dezembro de 1982, o governo do Estado adquiriu o Majestic do Banrisul e, um ano mais tarde, o prédio foi arrolado como patrimônio histórico, tendo início, a partir de então, sua transformação em Casa de Cultura. Por meio da Lei estadual nº 7.803 de 8 de julho de 1983, recebeu a denominação de Mario Quintana, passando a fazer parte da então Subsecretaria de Cultura do Estado."),
    Destination(
        "Hotel em Casa de Cultura",
        "Mario Quintana",
        4.9,
        "assets/porto_alegre/quintana/mario2.png",
        "A obra de transformação física do Hotel em Casa de Cultura, entre elaboração do projeto e construção, desenvolveu-se de 1987 a 1990. O projeto arquitetônico foi assinado pelos arquitetos Flávio Kiefer e Joel Gorski, os quais tiveram o desafio de planejar 12.000 m2 de área construída para a área cultural, em 1.540m2 de terreno. Em 25 de setembro de 1990 a casa foi finalmente aberta."),
    Destination(
        "A casa",
        "Mario Quintana",
        4.3,
        "assets/porto_alegre/quintana/mario3.png",
        "Os espaços da Casa de Cultura Mario Quintana estão voltados para o cinema, a música, as artes visuais, a dança, o teatro, a literatura, a realização de oficinas e eventos ligados à cultura. Eles homenageiam grandes nomes da cultura do Estado do Rio Grande do Sul."),
    Destination(
        "Mario Quintana",
        "Mario Quintana",
        4.8,
        "assets/porto_alegre/quintana/mario4.png",
        "Mário de Miranda Quintana foi um poeta, tradutor e jornalista brasileiro. Mário Quintana fez as primeiras letras em sua cidade natal, mudando-se em 1919 para Porto Alegre, onde estudou no Colégio Militar, publicando ali suas primeiras produções literárias. Trabalhou para a Editora Globo e depois na farmácia paterna."),
       
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
