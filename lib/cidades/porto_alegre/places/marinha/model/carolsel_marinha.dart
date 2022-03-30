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

class DestinationCarouselMarinha extends StatelessWidget {
  final List<Destination> destinations = [
    Destination(
        "Jardins",
        "Parque Marinha",
        4.7,
        "assets/porto_alegre/marinha/marinha1.png",
        "Formado por um acervo de dez obras, o Jardim das Esculturas reúne trabalhos de artistas latino-americanos, tais como Amilcar de Castro, Aluisio Carvão, Francisco Stockinger, Franz Weissmann e Carlos Fajardo, do Brasil; Ennio Iommi, Julio Pérez Sanz e Hernan Dompé, da Argentina; e Francine Secretan e Ted Carrasco, da Bolívia. Todas as esculturas foram construídas a partir de materiais duráveis, como pedra, aço, concreto e tijolos, e foram doadas por seus respectivos criadores à Fundação Bienal de Artes Visuais do Mercosul."),
    Destination(
        "Estrutura",
        "Parque Marinha",
        4.9,
        "assets/porto_alegre/marinha/marinha2.png",
        "A sua infraestrutura é totalmente voltada para o esporte. São inúmeras quadras de tênis, vôlei, basquete e futebol de salão, além de pistas de atletismo, patinação, skate, futebol de campo, velódromo e aparelhos de ginástica."),
    Destination(
        "História",
        "Parque Marinha",
        4.3,
        "assets/porto_alegre/marinha/marinha3.png",
        "Inaugurado em 9 de dezembro de 1978, com projeto dos arquitetos Ivan Mizoguchi e Rogério Malinsky, o Parque Marinha do Brasil possui uma área de 70,70 hectares.[1] Está localizado no bairro Praia de Belas, é contornado pelas avenidas Borges de Medeiros e Ipiranga, sendo cortado pela avenida Edvaldo Pereira Paiva (também chamada Beira-Rio), a qual possui vista para a orla do Guaíba. O parque foi projetado sobre o antigo aterro que possibilitou a expansão do Praia de Belas, finalizada na década de 1960."),
    Destination(
        "Esports",
        "Parque Marinha",
        4.8,
       "assets/porto_alegre/marinha/marinha4.png",
        "Conhecido pela prática de esportes, este parque tem quadras de futebol de salão, tênis, vôlei, basquete, pistas de patinação, skate, atletismo e ciclismo, aparelhos para ginástica, campos de futebol 7, além de espaços com brinquedos para as crianças."),
       
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
