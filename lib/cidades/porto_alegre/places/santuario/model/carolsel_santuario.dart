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

class DestinationCarouselSantuario extends StatelessWidget {
  final List<Destination> destinations = [
    Destination(
        "Santuario Mãe de Deus",
        "Glória",
        4.7,
       "assets/porto_alegre/santuario/santuario1.png",
        "Imagem de Nossa Senhora Mãe de Deus, a padroeira de Porto Alegre, esculpida em madeira de tília por artistas italianos e benta pelo Papa João Paulo II, em Roma, no ano de 1988. Obra de arte exposta à visitação e à veneração."),
    Destination(
        "Santuario Mãe de Deus",
        "Glória",
        4.9,
        "assets/porto_alegre/santuario/santuario2.png",
        "O Santuário Nossa Senhora Mãe de Deus foi concluído em junho de 2000. Tem 700 m² de área construída em um terreno de 7 hectares, nos altos do Morro do Santuário. Nossa Senhora Mãe de Deus é padroeira de Porto Alegre e da Arquidiocese desde 18 de janeiro de 1773 e o prédio passou a ser patrimônio arquitetônico da cidade a partir de 2014. A mensagem específica desse santuário é exaltar e glorificar o maior de todos os títulos e graças da Virgem Maria e o fundamento de sua grandeza, que é ser Mãe de Deus."),
    Destination(
        "Santuario Mãe de Deus",
        "Glória",
        4.3,
        "assets/porto_alegre/santuario/santuario3.png",
        "Outubro é conhecido como o mês das missões populares que acontecem no Brasil e daquelas que são realizadas fora de nosso pais entre os que ainda não conhecem Jesus Cristo. São chamadas Missões entre os infiéis."),
    Destination(
        "Batizados",
        "Glória",
        4.8,
        "assets/porto_alegre/santuario/santuario4.png",
        "Inscrição da criança: todos os dias (incluindo sábado e domingo), das 9h às 17h, no Santuário. Trazer Registro Civil da criança. Preparação para o batizado: no último domingo de cada mês, na missa das 9h, com a presença dos pais, dos padrinhos e a criança. Batizados: todo primeiro domingo de cada mês."),
      
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
