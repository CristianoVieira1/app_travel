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

class DestinationCarouselMoinhos extends StatelessWidget {
  final List<Destination> destinations = [
    Destination(
        "Parcão",
        "Parque Moinhos de Vento",
        4.7,
        "assets/porto_alegre/moinhos/moinhos2.png",
        "O Parcão é um belo parque e uma boa opção natural para fugir do trânsito, poluição. É uma fuga necessária para contemplar uma bela natureza, ver e conviver com patos e tartarugas. A região do Moinho mais o lago é um lugar para contemplar. Revigora a alma."),
    Destination(
        "Lagoa",
        "Parque Moinhos de Vento",
        4.9,
        "assets/porto_alegre/moinhos/moinhos1.png",
        "A sede administrativa do Parque Moinhos de Vento fica na réplica de um moinho açoriano, cercado por um lago artificial que possibilita vida para uma fauna composta por peixes, tartarugas, jabutis, gansos e marrecos. O Parcão também conta com playground e com a Biblioteca Ecológica Infantil Maria Dinorah, a qual possui cerca de mil livros, inclusive títulos em braile. Dos monumentos, o que mais se destaca é o criado por Carlos Tenius, em homenagem a Castelo Branco."),
    Destination(
        "História",
        "Parque Moinhos de Vento",
        4.3,
        "assets/porto_alegre/moinhos/moinhos4.png",
        "O nome do Parque remonta ao século XVIII, quando o mineiro Antônio Martins Barbosa estabeleceu na região, em uma parte elevada da avenida Independência, o seu moinho de vento. Na época, o trigo era um produto de grande importância econômica para o povo da freguesia de Nossa Senhora de Madre de Deus, que se tornou cidade de Porto Alegre em 1822. Até hoje o estado do Rio Grande do Sul é um dos maiores produtores de trigo do país. Em 1839, o cartógrafo Luís Pereira Dias confeccionou um mapa da cidade e registrou um ponto da zona, na altura do atual Colégio Bom Conselho, como “Moinhos de Vento Velho”."),
    Destination(
        "Moinho",
        "Parque Moinhos de Vento",
        4.8,
        "assets/porto_alegre/moinhos/moinhos3.png",
        "O parque conta ainda com uma réplica de moinho açoriano ao estilo dos que existiam no bairro nos primórdios da cidade, elemento que constitui uma forte atração turística. No moinho, funciona a Biblioteca Infantil Ecológica Maria Dinorah. O monumento no centro do Parque faz uma homenagem à Castelo Branco e é uma obra de Carlos Tênius. Além do Parque, aproveite para caminhar em seu entorno e se encantar com a arquitetura de casas que ainda guardam os primórdios da história do bairro Moinhos de Vento, além da própria história da capital. Nos finais de semana, o Parcão é sinônimo de muita gente bonita, rodas de chimarrão nos gramados e descontração, embalada também pelos bares e cafés das ruas que contornam o parque e que oferecem boas opções de sucos e lanches."),
       
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
