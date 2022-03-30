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

class DestinationCarouselCatedral extends StatelessWidget {
  final List<Destination> destinations = [
    Destination(
        "Catedral",
        "Catedral Metropolitana",
        4.7,
        "assets/porto_alegre/catedral/catedral1.png",
        "O projeto dos mosaicos do frontispício da Catedral, elaborado sob a coordenação de Dom Antônio Cheuiche foi executado pela Academia de Mosaicos do Vaticano. O material empregado, tesselas de cristal de Murano, possui cerca de dez mil nuances de colorido, destacando-se o azul de cobalto, o azul turquesa e o marinho, habilmente mesclados com o dourado."),
    Destination(
        "Missas",
        "Catedral Metropolitana",
        4.9,
        "assets/porto_alegre/catedral/catedral2.png",
        "O altar, os ambões, a cátedra do Arcebispo e a Via-Sacra são obras do escultor Giulio Tixe. As portas, do escultor Marcelino Schmitz. Os vidros da porta principal são de autoria de Evaristo Iglesias. No presbitério, a pintura que emoldura a imagem da Padroeira, é criação do artista Aldo Locatelli."),
    Destination(
        "O projeto",
        "Catedral Metropolitana",
        4.3,
        "assets/porto_alegre/catedral/catedral3.png",
        "O projeto é de autoria do arquiteto João Batista Giovenale, então professor da Academia de Belas Artes – São Lucas – de Roma, e membro da Comissão de Arte Sacra da Basílica de São Pedro. O arquiteto era notável por trabalhos executados em Roma, tais como a cripta da Igreja de Santa Cecília e o novo Museu Petriano, destinado a conservar as antiguidades e objetos de arte da antiga basílica Constantiniana, além de outras obras de restauração de templos romanos."),
    Destination(
        "Início das Obras",
        "Catedral Metropolitana",
        4.8,
        "assets/porto_alegre/catedral/catedral6.png",
        "As obras iniciaram-se com os grandes trabalhos de aparelhamento do terreno, com a demolição da capela-mór da igreja, da Caplea do Santíssimo, das sacristias, e de diversos prédios à R. Espírito Santo, um adquirido e outros pertencentes à Irmandade de São Miguel e Almas, à Irmandade de Santa Cecília, por estar cedidos para a construção da nova catedral.No dia 07 de agosto de 1921 lançou-se a pedra fundamental do templo. Para o grande empreendimento a Comissão executiva das obras julgou conveniente a aquisição de uma pedreira. Foi então escolhido o morro de Teresópolis, um terreno que a entidade Pão dos Pobres possuia e que recebera dos remanescentes do patrimônio do projetado Orfanotrofio do Padre João Pereira Lima. Ali foi aberta uma escavação, de onde saiu toda a pedra necessária para a cripta e a metade dos muros da edificação."),
       
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
