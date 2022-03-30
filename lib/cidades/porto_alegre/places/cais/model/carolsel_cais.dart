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

class DestinationCarouselCais extends StatelessWidget {
  final List<Destination> destinations = [
    Destination(
        "Curta a Orla",
        "Orla do Guaiba",
        4.7,
        "assets/images/orla.png",
        "Um passeio com amigos e familia, tomar um chimarrão, viva a vida, conhaça a nova Orla do Guaiba."),
    Destination(
        "Fim de Tarde",
        "Orla do Guaiba",
        4.9,
        "assets/images/orla1.png",
        "Final de tarde, um bom momento para curtir um passeo, levar a familia para caminhar."),
    Destination(
        "Orla a noite",
        "Orla do Guaiba",
        4.3,
        "assets/images/orla2.png",
        "Uma noite Inesquecível, conheça a Orla a noite, muita iluminação e segurança, conheça o piso brilhante."),
    Destination(
        "Navegando pelo Guaiba",
        "Orla do Guaiba",
        4.8,
        "assets/images/orla3.png",
        "Passeio com uma hora de duração, que percorre as principais ilhas do Guaíba, saindo do Cais do Porto. Além de turí­stico, tem um enfoque cultural, com locução que ilustra seu itinerário, contando um pouco da história de Porto Alegre. Frequência: diária. Horários de saí­da: 10h45min, 15h e 16h30min  (de Segunda-feira à Domingo)."),
        Destination(
        "Réveillon no orla do Guaíba",
        "Orla do Guaiba",
        4.2,
        "assets/images/orla4.png",
        "Uma das atrações mais esperada da festa é a queima de fogos que terá duração de 10 minutos. “Serão utilizados fogos sem estampido, que produzem efeitos de luzes e cores. Não serão empregados elementos que produzem barulho, embora haja algum tipo de ruído na projeção e na abertura”, explica Leandro Orça, responsável pela pirotecnia. O espetáculo vai utilizar 1,5 tonelada e será executado pelo grupo Vision Show, empresa responsável pelos shows pirotécnicos mais imponentes do Brasil, incluindo a queima de fogos do Réveillon de Copacabana, no Rio de Janeiro."),
        Destination(
        "Restaurante panorâmico",
        "Orla do Guaiba",
        4.0,
        "assets/images/orla5.png",
        "O complexo tem capacidade para atender 250 pessoas em uma estrutura metálica e de vidro voltada para Guaíba. Não há reservas, o atendimento é por ordem de chegada. O projeto arquitetônico interno e do deck é assinado pelos arquitetos Alexandre Viero, Sheila Bittencourt e Silvia Benedetti. Segundo Edemir Simonetti, proprietário do restaurante, foram investidos cerca de 800 mil nos três meses de preparativos até a abertura para o público."),
        Destination(
        "Por do Sol",
        "Orla do Guaiba",
        4.6,
        "assets/images/orla6.png",
        "O pôr do sol no Guaíba é realmente o melhor do mundo? Tanto faz, o que importa é que ele está no coração dos porto-alegrenses. Passeie pelo parque e aguarde o cair da tarde. Pode tirar selfies à vontade, mas a dica aqui é não deixar o momento especial passar sem ter apreciado com os próprios olhos em vez de assisti-lo pela tela do celular."),
        Destination(
        "Andar de bicicleta",
        "Orla do Guaiba",
        4.8,
        "assets/images/orla8.png",
        "Uma das principais atrações da nova orla é a sua ciclovia. Nada como pedalar ao lado do principal cartão postal de Porto Alegre. O legal é que, além dos postes com iluminação LED, o próprio piso — da ciclovia e do passeio para pedestres — é iluminado com fibra ótica, tornando possível pedalar também à noite."),
 
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
