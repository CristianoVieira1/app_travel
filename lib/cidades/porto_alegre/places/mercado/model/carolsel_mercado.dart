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

class DestinationCarouselMercado extends StatelessWidget {
  final List<Destination> destinations = [
    Destination(
        "Conheça",
        "Mercado público",
        4.7,
        "assets/porto_alegre/mercado/mercado1.png",
        "O Mercado Público Central de Porto Alegre é um prédio histórico da cidade de Porto Alegre, capital do estado do Rio Grande do Sul. O Mercado Público Central tem como limites o Largo Glênio Peres, a Avenida Borges de Medeiros, a Avenida Júlio de Castilhos e a Praça Pereira Parobé, no centro histórico da cidade. Fica ao lado do prédio da Prefeitura Municipal de Porto Alegre e de frente para o Chalé da Praça XV."),
    Destination(
        "O mercado",
        "Mercado público",
        4.9,
        "assets/porto_alegre/mercado/mercado2.png",
        "Inaugurado em 1869, o Mercado Público de Porto Alegre  integra o  Patrimônio Histórico e Cultural da cidade e é um dos principais pontos comerciais da Capital. O prédio abriga 110 estabelecimentos com  várias atividades: restaurantes (cozinha macrobiótica, cozinha japonesa, cozinha portuguesa, carnes variadas e um com buffet), lancherias, , cafeteria pastelaria, padarias,fruteiras, açougues, peixarias,  lojas de artigos para animais, barbearia, entre outras."),
    Destination(
        "Bancas",
        "Mercado público",
        4.3,
        "assets/porto_alegre/mercado/mercado3.png",
        "O Mercado Público faz parte das tradições da cidade, principalmente por sua Banca 40 (uma sorveteria), seu centenário restaurante Gambrinus e um dos mais tradicionais bares da cidade, o Bar Naval, com 101 anos. O mercado tem sua arquitetura externa totalmente preservada. Existem mais de 100 lojas, que vendem de tudo: especiarias, erva-mate e utensílios gaúchos, artigos para cultos religiosos, bacalhau e outros peixes e carnes, lancherias e restaurantes. Existem mais de 100 mil itens à venda."),
    Destination(
        "Incêndio de 2013",
        "Mercado público",
        4.8,
        "assets/porto_alegre/mercado/mercado4.png",
        "O Mercado Público sofreu seu quarto incêndio em 6 de julho de 2013. O fogo iniciou por volta das 20h30min na parte antiga do complexo, e se alastrou rapidamente, consumindo uma grande parte do segundo piso e do telhado. O moderno pátio interior coberto, com suas bancas, bem como o térreo da parte antiga, não foram atingidos. A estrutura de alvenaria do prédio sobreviveu mesmo nos locais incendiados e não sofre risco de desabamento. Sendo um dos edifícios mais tradicionais e estimados da capital gaúcha, o fogo causou emocionada apreensão em muitas pessoas, formou-se uma multidão em torno do incêndio, as redes sociais publicaram mensagens de tristeza, e pela intensidade das labaredas temeu-se uma destruição total. No entanto, os bombeiros chegaram rápido e em cerca de duas horas debelaram o fogo com um efetivo de 70 soldados e vários caminhões. Em inspeção no dia seguinte a perícia calculou que apenas 10% do total do Mercado foi destruído, mas de qualquer maneira os prejuízos foram grandes. Porém, não houve vítimas. As causas do fogo ainda não foram determinadas."),
        Destination(
        "História",
        "Mercado público",
        4.2,
        "assets/porto_alegre/mercado/mercado5.png",
        "Patrimônio Histórico e Cultural de Porto Alegre, o Mercado Público foi inaugurado em 1869 para abrigar o comércio de abastecimento da cidade. Tombado como Bem Cultural, passou entre 1990 e 1997 por um processo de restauração, agregando mais qualidade a sua estrutura e recuperando a concepção arquitetônica original."),
       
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
