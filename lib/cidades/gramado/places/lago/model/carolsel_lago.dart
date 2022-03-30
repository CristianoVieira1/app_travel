import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'destinationDetail.dart';

class Destination {
  final String title;
  final String date;
  final String photo;
  final double rating;
  final String description;
  Destination(
      this.title, this.date, this.rating, this.photo, this.description);
}

class DestinationCarouselLago extends StatelessWidget {
  final List<Destination> destinations = [
    Destination(
        "Um belo Passeio",
        "Lago Negro",
        4.7,
        "assets/gramado/lago/lago1.png",
        "Um passeio com amigos e familia, tomar um chimarrão, viva a vida, conhaça a nova Lago Negro."),
    Destination(
        "Fim de Tarde",
        "Lago Negro",
        4.9,
        "assets/gramado/lago/lago2.png",
        "Final de tarde, um bom momento para curtir um passeo, levar a familia para caminhar."),
    Destination(
        "Orla a noite",
        "Lago Negro",
        4.3,
        "assets/gramado/lago/lago3.png",
        "Uma noite Inesquecível, conheça a Orla a noite, muita iluminação e segurança, conheça o piso brilhante."),
    Destination(
        "Navegando pelo Guaiba",
        "Lago Negro",
        4.8,
        "assets/gramado/lago/lago4.png",
        "Passeio com uma hora de duração, que percorre as principais ilhas do Guaíba, saindo do Cais do Porto. Além de turí­stico, tem um enfoque cultural, com locução que ilustra seu itinerário, contando um pouco da história de Porto Alegre. Frequência: diária. Horários de saí­da: 10h45min, 15h e 16h30min  (de Segunda-feira à Domingo)."),
       
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
