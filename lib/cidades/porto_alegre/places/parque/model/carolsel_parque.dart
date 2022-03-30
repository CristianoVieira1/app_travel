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

class DestinationCarouselParque extends StatelessWidget {
  final List<Destination> destinations = [
    Destination(
        "História",
        "Parque Gabriel Knijnik",
        4.7,
        "assets/porto_alegre/parque/parque1.png",
        "Localizado no Bairro Vila Nova, o Parque Knijnik foi incorporado em 1997 às áreas verdes de Porto Alegre. No passado, foi área de lazer e sítio do engenheiro civil Gabriel Knijnik, que doou a área, em testamento, com o desejo de transformá-la em parque municipal. No local, há uma placa alusiva à doação, como homenagem ao engenheiro. A área  conta com diferentes ambientes, com diversas espécies da fauna e flora. Há pomar, onde se encontram árvores frutíferas como pitangueira, pereira, ameixeira e jaboticabeira, além de eucaliptos e pinus. Também possui uma área de banhado e uma grande área de preservação."),
    Destination(
        "Urbanizado",
        "Parque Gabriel Knijnik",
        4.9,
        "assets/porto_alegre/parque/parque2.png",
        "Urbanizado em 2004, a área verde conta com sanitários, coreto, playground, 14 churrasqueiras, duas quadras de futebol em saibro, uma cancha de bocha, trilha e estacionamento para carros."),
    Destination(
        "Passeio",
        "Parque Gabriel Knijnik",
        4.3,
        "assets/porto_alegre/parque/parque3.png",
        "Um ótimo lugar para um bom passeio ou um piquinic."),
    Destination(
        "Parque Ecológico",
        "Parque Gabriel Knijnik",
        4.8,
        "assets/porto_alegre/parque/parque4.png",
        "Com uma boa vegetação, um lindo lugar para passear, entao se liga na dica LIXO no LIXO e curata o passeio"),
        Destination(
        "Esportes",
        "Parque Gabriel Knijnik",
        4.2,
        "assets/porto_alegre/parque/parque5.png",
        "Conta com quadras de esportes e banheiros."),
        Destination(
        "Espetáculo",
        "Parque Gabriel Knijnik",
        4.0,
        "assets/porto_alegre/parque/parque6.png",
        "Um belo luar para descontrair num fim de semana."),
        Destination(
        "Por do Sol",
        "Parque Gabriel Knijnik",
        4.6,
        "assets/porto_alegre/parque/parque7.png",
        "O pôr do sol. Passeie pelo parque e aguarde o cair da tarde. Pode tirar selfies à vontade, mas a dica aqui é não deixar o momento especial passar sem ter apreciado com os próprios olhos em vez de assisti-lo pela tela do celular."),
        
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
