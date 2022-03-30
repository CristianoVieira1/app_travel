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

class DestinationCarouselIpanema extends StatelessWidget {
  final List<Destination> destinations = [
    Destination(
        "Passeio",
        "Calçadão de Ipanema",
        4.7,
        "assets/porto_alegre/ipanema/ipanema1.png",
        "O Calçadão de Ipanema fica às margens do Guaíba e é um dos lugares mais conhecidos da capital gaúcha, indicado para pessoas que procuram uma boa opção de lugar para caminhar ou de barzinhos e restaurantes interessantes para curtir o belo pôr-do-sol à beira do rio."),
    Destination(
        "Sobre Ipanema",
        "Calçadão de Ipanema",
        4.9,
        "assets/porto_alegre/ipanema/ipanema2.png",
        "São mais de mil metros de praia de água doce, onde os visitantes podem desfrutar de instalações como ciclovias, churrasqueiras, chuveiros, bancos e aparelhos de ginástica ao ar livre. Lá, também acontecem competições de esportes náuticos, tais como windsurf, jet-ski e vela de oceano. "),
    Destination(
        "Ipanema",
        "Calçadão de Ipanema",
        4.3,
        "assets/porto_alegre/ipanema/ipanema3.png",
        "Ipanema, pérola da Zona Sul. Seu pôr do sol, o mais admirado da cidade, seja das pedras, do calçadão ou de uma mesa com chope gelado. Suas areias, do futebol, do vôlei e, por que não?, do futevôlei. Suas ruas arborizadas, cheias de história, onde resistem antigos casarões. Suas meninas, que vêm e que passam, num doce balanço, a caminho do... lago."),
    Destination(
        "História",
        "Calçadão de Ipanema",
        4.8,
        "assets/porto_alegre/ipanema/ipanema4.png",
        "No início da década de 1930, o balneário Ipanema, em comparação a bairros vizinhos, como Pedra Redonda, Tristeza e Cavalhada, não passava então de uma área rural quase desabitada da capital gaúcha. O início da ocupação se deu efetivamente quando Oswaldo Coufal adquiriu um grande propriedade na área para em seguida loteá-la."),
      
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
