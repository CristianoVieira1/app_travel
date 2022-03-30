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

class DestinationCarouselRedencao extends StatelessWidget {
  final List<Destination> destinations = [
    Destination(
        "Parque Farroupilha",
        "Redenção",
        4.7,
        "assets/porto_alegre/redencao/redencao1.png",
        "O Parque Farroupilha, mais conhecido como Parque da Redenção ou simplesmente por Redenção, é o parque mais tradicional e popular da cidade brasileira de Porto Alegre, capital do estado do Rio Grande do Sul. É um local visitado por muitos porto-alegrenses nas horas de descanso, seja para praticar esportes, tomar sol ou confraternizar tomando chimarrão com a família e amigos. O perímetro do parque é definido pelas ruas Setembrina e Luís Englert e as avenidas Oswaldo Aranha, João Pessoa e José Bonifácio."),
    Destination(
        "História",
        "Redenção",
        4.9,
        "assets/porto_alegre/redencao/redencao2.png",
        "O local onde hoje está o parque antigamente era a chamada Várzea do Portão, uma grande planície alagadiça próxima do antigo portão da Vila de Porto Alegre. Em 23 de fevereiro de 1807 a Câmara Municipal solicitou ao então governador da Capitania de São Pedro do Rio Grande do Sul, almirante Paulo José da Silva Gama, barão de Bagé, que fizesse a doação da Várzea para ser usada como logradouro público, bem como uma área de concentração para os rebanhos de gado trazidos para abastecimento local. Contudo, sua medição efetiva só seria realizada entre 1820 e 1825."),
    Destination(
        "Chafariz",
        "Redenção",
        4.3,
        "assets/porto_alegre/redencao/redencao3.png",
        "Fonte Luminosa do Parque Farroupilha foi construída por ocasião da Exposição Comemorativa do Centenário da Revolução Farroupilha em 1935, tendo sido utilizado como base o anteprojeto de ajardinamento do Campo da Redenção elaborado pelo arquiteto urbanista Alfred Agache, datado de 1928. Nesta ocasião em homenagem ao Centenário da Revolução Farroupilha, o Campo da Redenção recebeu a denominação de Parque Farroupilha."),
    Destination(
        "Fonte Francesa",
        "Redenção",
        4.8,
        "assets/porto_alegre/redencao/redencao7.png",
        "A Fonte Francesa, também conhecida por Chafariz Imperial, é um chafariz de ferro fundido localizado no Parque Farroupilha, principal parque público da cidade de Porto Alegre, no Rio Grande do Sul, Brasil. Criado pelo escultor Carrier-Belleuse e datado de 1866, foi fabricado na França e importado para Porto Alegre juntamente com outros seis chafarizes. Com o desaparecimento sem explicação dos outros chafarizes no final do século XIX, a Fonte Francesa se tornou o único remanescente daquele período que permanece até os dias de hoje. Originalmente se encontrava na Praça da Alfândega, em frente ao antigo prédio da Alfândega, sendo transferido posteriormente para a Praça Paraíso (atual Praça XV de Novembro), permanecendo até 1925, quando novamente viria a mudar de lugar, agora para a Praça Pereira Parobé, uma praça que existia ao lado do Mercado Público de Porto Alegre, onde hoje existe o Terminal de Ônibus Pereira Parobé. Depois da enchente de 1941, foi transferido para seu lugar atual, no Recanto Europeu do Parque Farroupilha."),
        Destination(
        "Caramanchão em estilo antigo",
        "Redenção",
        4.2,
        "assets/porto_alegre/redencao/redencao4.png",
        "Um pouquinho do Japão no meio do parque em Porto Alegre."),
       
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
