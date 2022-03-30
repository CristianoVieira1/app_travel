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

class DestinationCarouselBelem extends StatelessWidget {
  final List<Destination> destinations = [
    Destination(
        "Ruínas do Polleto",
        "Praia do Veludo",
        4.7,
        "assets/porto_alegre/belem/belem6.png",
        "Contou que este espaço em ruínas, é pertencente à prefeitura de Porto Alegre. Foi construído no final da década de 20, no século passado. Que depois de algum tempo, o Restaurante Leblon passou para o Polleto e sua família, que o administraram até o final dos anos 70, quando foi vendido para um casal de uruguaios... E que a partir daí, o restaurante entrou na fase de decadência do turismo local, juntamente a outros empreendimentos do bairro (Hotel Cassino, cinemas, bar Copacabana, etc).."),
    Destination(
        "Pesca",
        "Praia do Veludo",
        4.9,
        "assets/porto_alegre/belem/belem2.png",
        "Um bom lugar para quem gosta de relachar pescando, águas calmas e bastante variedades de peixes."),
    Destination(
        "Águas calmas",
        "Praia do Veludo",
        4.3,
        "assets/porto_alegre/belem/belem3.png",
        "O lago guaíba é um local de grande beleza, e uma referência em Porto Alegre. Mas é um local muito perigoso e atirado, os trechos aproveitáveis e seguros estão na assunção, Ipanema, belém novo e lami."),
    Destination(
        "Aproveite",
        "Praia do Veludo",
        4.8,
        "assets/porto_alegre/belem/belem4.png",
        "As praias do Lami e de Belém Novo são opções neste verão para os porto-alegrenses que não podem ir para o Litoral Norte gaúcho ou para as praias de Santa Catarina. O Lami, como já é tradição, é frequentado por diversas famílias da Capital e da Região Metropolitana de Porto Alegre. Outro motivo da preferência pelo local é que muitos frequentadores não tem condições financeiras de viajar para outras praias do litoral gaúcho. Regina Freitas, moradora do bairro Santa Isabel em Viamão e que estava na companhia das duas filhas, frequenta a praia há mais de 15 anos. No sábado, ela trouxe os netos Camila e João Pedro para conhecer o Lami. Com o calor, as crianças aproveitaram para se refrescar na água que estava própria para banho."),
       
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
