import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math' as math;

import 'package:travel_rs/screen/home_page.dart';




class SlidingCardsView extends StatefulWidget {
  @override
  _SlidingCardsViewState createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCardsView> {
  PageController pageController;
  double pageOffset = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8);
    pageController.addListener(() {
      setState(() =>
          pageOffset = pageController.page); //<-- add listener and set state
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: PageView(
        controller: pageController,
        children: <Widget>[
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Centro Cultural Usina do Gasômetro',
                description: 'Bairro Centro Histórico',
                assetName: 'cais.png',
                offset: pageOffset,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomePage()
                      )
                    );
                  },
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Monumento aos Açorianos',
                description: 'Bairro Cidade Baixa',
                assetName: 'acorianos.png',
                offset: pageOffset,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => homeAcorianos()
                    //   )
                    // );
                  },
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Arena do Grêmio',
                description: 'Bairro Humaitá',
                assetName: 'gremio.png',
                offset: pageOffset - 1,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Estádio Beira-Rio',
                description: 'Bairro Praia de Belas',
                assetName: 'beira_rio.png',
                offset: pageOffset - 2,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Catedral Metropolitana de Porto Alegre',
                description: 'Bairro Centro Histórico',
                assetName: 'catedral.png',
                offset: pageOffset - 3,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Calçadão De Ipanema',
                description: 'Bairro Ipanema',
                assetName: 'ipanema.png',
                offset: pageOffset - 5,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Jardim Botânico',
                description: 'Bairro Jardim Botânico',
                assetName: 'jardim_botanico.png',
                offset: pageOffset - 6,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Casa de Cultura Mário Quintana',
                description: 'Bairro Centro Histórico',
                assetName: 'mario_quintana.png',
                offset: pageOffset - 6,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Mercado Público de Porto Alegre',
                description: 'Bairro Centro Histórico',
                assetName: 'mercado_publico.png',
                offset: pageOffset - 7,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Museu de Ciências e Tecnologia - PUCRS',
                description: 'Bairro Partenon',
                assetName: 'museu_ciencias.png',
                offset: pageOffset - 8,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Fundação Iberê Camargo',
                description: 'Bairro Cristal',
                assetName: 'museu_ibere.png',
                offset: pageOffset - 9,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Palácio Piratini',
                description: 'Bairro Centro Histórico',
                assetName: 'palacio_piratini.png',
                offset: pageOffset - 10,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Parque Maurício Sirotsky Sobrinho (Parque Harmonia)',
                description: 'Bairro Cidade Baixa',
                assetName: 'parque_farroupilha.png',
                offset: pageOffset - 11,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Parque Marinha do Brasil',
                description: 'Bairro Centro Histórico ',
                assetName: 'parque_marinha.png',
                offset: pageOffset - 13,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Parque Moinhos de Vento',
                description: 'Bairro Moinhos de Vento',
                assetName: 'parque_moinhos.png',
                offset: pageOffset - 14,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Praça da Alfândega',
                description: 'Bairro Centro Histórico',
                assetName: 'praca_alfandega.png',
                offset: pageOffset - 15,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Praça da Matriz',
                description: 'Bairro Centro Histórico',
                assetName: 'praca_matriz.png',
                offset: pageOffset - 16,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Prefeitura Municipal de Porto Alegre',
                description: 'Bairro Centro Histórico',
                assetName: 'prefeitura.png',
                offset: pageOffset - 17,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Santander Cultural',
                description: 'Bairro Centro Histórico',
                assetName: 'santander_cultural.png',
                offset: pageOffset - 18,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Santuário Nossa Senhora Mãe de Deus',
                description: 'Belém Velho',
                assetName: 'santuario.png',
                offset: pageOffset - 19,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Acampamento Farroupilha',
                description: 'Bairro Centro Histórico',
                assetName: 'acampamento_farroupilha.jpg',
                offset: pageOffset - 20,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Theatro São Pedro',
                description: 'Bairro Centro Histórico',
                assetName: 'teatro_sao_pedro.png',
                offset: pageOffset - 20,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Parque Gabriel Knijnik',
                description: 'Bairro Vila Nova',
                assetName: 'kiniginik.png',
                offset: pageOffset - 21,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Museu de Arte do Rio Grande do Sul',
                description: 'Bairro Centro Histórico',
                assetName: 'museu_arte.jpg',
                offset: pageOffset - 22,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
           Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Morro do Osso',
                description: 'Bairro Ipanema',
                assetName: 'morro_osso.jpg',
                offset: pageOffset - 23,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Praia Belém Novo',
                description: 'Bairro Belém Novo',
                assetName: 'belem_novo.jpg',
                offset: pageOffset - 24,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              SlidingCard(
                name: 'Praia do Lami',
                description: 'Bairro Lami',
                assetName: 'praia_lami.jpg',
                offset: pageOffset - 25,
              ),
              Positioned(
                bottom: 20,
                right: 0,
                child: new RawMaterialButton(
                  onPressed: () {},
                  child: new Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 35.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SlidingCard extends StatelessWidget {
  final String name;
  final String description;
  final String assetName;
  final double offset;

  const SlidingCard({
    Key key,
    @required this.name,
    @required this.description,
    @required this.assetName,
    @required this.offset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double gauss = math.exp(-(math.pow((offset.abs() - 0.5), 2) / 0.08));
    return Transform.translate(
      offset: Offset(-32 * gauss * offset.sign, 0),
      child: Card(
        margin: EdgeInsets.only(left: 8, right: 8, bottom: 14),
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
              child: Image.asset('assets/porto_alegre/$assetName',
                  height: MediaQuery.of(context).size.height * 0.3,
                  alignment: Alignment(-offset.abs(), 0),
                  fit: BoxFit.cover),
            ),
            SizedBox(height: 2),
            Expanded(
              child: new CardContent(
                name: name,
                description: description,
                offset: gauss, conheca: null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  final String name;
  final String description;
  final double offset;
  final String conheca;

  const CardContent(
      {Key key,
      @required this.name,
      @required this.description,
      @required this.offset,
      @required this.conheca})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Transform.translate(
            offset: Offset(8 * offset, 0),
            child: Text(name, style: TextStyle(fontSize: 20)),
          ),
          SizedBox(height: 8),
          Transform.translate(
            offset: Offset(8 * offset, 0),
            child: Text(description,
                style: TextStyle(fontSize: 15, color: Colors.grey)),
          ),
          Container(),
        ],
      ),
    );
  }
}
