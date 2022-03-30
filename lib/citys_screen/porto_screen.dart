import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:travel_rs/cidades/porto_alegre/places/belem/belem_screen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/botanico/botanicoScreen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/cais/caisScreen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/catedral/catedralScreen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/gremio/gremioScreen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/inter/interScreen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/ipanema/ipanemaScreen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/marinha/marinha_screen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/mercado/mercadoScreen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/moinhos/moinhosScreen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/parque/parqueScreen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/quintana/quintanaScreen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/redencao/redencao_Screen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/santuario/santuario_screen.dart';
import 'package:travel_rs/models/user_model.dart';
import 'package:travel_rs/videos/video_porto.dart';

import 'activity.dart';

class PortoScreen extends StatefulWidget {
  @override
  _PortoScreenState createState() => _PortoScreenState();
}

class _PortoScreenState extends State<PortoScreen> {
  ScrollController _scrollController;
  bool _isExpanded = false;
  static const kSilverSize = 300 - kToolbarHeight;
  double _currentSize = 300 - kToolbarHeight;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() => setState(() {
            _isExpanded = (_scrollController.hasClients &&
                _scrollController.offset > kSilverSize);

            if (_scrollController.hasClients &&
                _scrollController.offset <= kSilverSize &&
                _scrollController.offset >= 0) {
              _currentSize = kSilverSize - _scrollController.offset;
            }
          }));
  }

  double getScale(double maxSize) {
    return maxSize * _currentSize / kSilverSize;
  }

  Color getColorScaled() {
    num v = 255 - (255 * _currentSize / kSilverSize).round().abs();

    return Color.fromRGBO(v, v, v, 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: ScopedModelDescendant<UserModel>(
          builder: (context, child, model) {
            if (model.isLoading)
              return Center(
                child: SpinKitRipple(
                  color: Colors.blueAccent,
                  size: 200.0,
                ),
              );
            return CustomScrollView(
              controller: _scrollController,
              slivers: <Widget>[
                SliverAppBar(
                  expandedHeight: 300,
                  pinned: true,
                  backgroundColor:
                      (_isExpanded) ? Colors.lightBlue : Colors.transparent,
                     leading: IconButton(
                       icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                       onPressed: () {
                         Navigator.of(context).pushReplacementNamed(
                           '/home'
                         );
                       },

                     ),
                  flexibleSpace: FlexibleSpaceBar(
                    title: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Porto Alegre",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w500)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Capital",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: getScale(15.0))),
                            ],
                          )
                        ],
                      ),
                    ),
                    background: Hero(
                      tag: "Porto Alegre",
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40.0),
                            bottomRight: Radius.circular(40.0)),
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/cidades/porto_alegre1.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                  ),
                   actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.play_circle_filled),
                    color: Colors.white,
                    iconSize: 35,
                    tooltip: 'Assista o Vídeo',
                    onPressed: () {
                      Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => VideoPorto()
                                      )
                                    );
                    },
                  ),
                ]
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => CaisScreen()));
                            },
                            child: ActivityWidget(
                              type: "Centro Histórico",
                              rating: 5,
                              name: "Orla do Guaiba",
                              image:
                                  "assets/porto_alegre/cais.png",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => GremioScreen()));
                            },
                            child: ActivityWidget(
                              type: "Humaitá",
                              rating: 5,
                              name: "Arena do Grêmio",
                              image:
                                  "assets/porto_alegre/gremio.jpg",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => InterScreen()));
                            },
                            child: ActivityWidget(
                              type: "Praia de Belas",
                              rating: 5,
                              name: "Beira Rio",
                              image:
                                  "assets/porto_alegre/beira_rio.png",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SantuarioScreen()));
                            },
                            child: ActivityWidget(
                              type: "Glória",
                              rating: 5,
                              name: "Santuário Nossa Senhora Mãe de Deus",
                              image:
                                  "assets/porto_alegre/santuario.png",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => BelemScreen()));
                            },
                            child: ActivityWidget(
                              type: "Belém Novo",
                              rating: 5,
                              name: "Praia do Leblon",
                              image:
                                 "assets/porto_alegre/belem_novo.jpg",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => CatedralScreen()));
                            },
                            child: ActivityWidget(
                              type: "Centro Histórico",
                              rating: 5,
                              name: "Catedral Metropolitana",
                              image:
                                  "assets/porto_alegre/catedral.png",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => IpanemaScreen()));
                            },
                            child: ActivityWidget(
                              type: "Ipanema",
                              rating: 5,
                              name: "Calçadão de Ipanema",
                              image:
                                 "assets/porto_alegre/ipanema.png",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => BotanicoScreen()));
                            },
                            child: ActivityWidget(
                              type: "Jardim Botânico",
                              rating: 5,
                              name: "Jardim Botânico",
                              image:
                                  "assets/porto_alegre/jardim_botanico.png",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ParqueScreen()));
                            },
                            child: ActivityWidget(
                              type: "Vila Nova",
                              rating: 5,
                              name: "Parque Gabriel Knijnik",
                              image:
                                 "assets/porto_alegre/kiniginik.png",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => QuintanaScreen()));
                            },
                            child: ActivityWidget(
                              type: "Centro Histórico",
                              rating: 5,
                              name: "Casa de Cultura Mário Quintana",
                              image:
                                 "assets/porto_alegre/mario_quintana.png",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => MercadoScreen()));
                            },
                            child: ActivityWidget(
                              type: "Centro Histórico",
                              rating: 5,
                              name: "Mercado Público",
                              image:
                                 "assets/porto_alegre/mercado_publico.png",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => RedencaoScreen()));
                            },
                            child: ActivityWidget(
                              type: "Cidade Baixa",
                              rating: 5,
                              name: "Parque Farroupilha (Redenção)",
                              image:
                                  "assets/porto_alegre/parque_harmonia.png",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => MarinhaScreen()));
                            },
                            child: ActivityWidget(
                              type: "Centro Histórico",
                              rating: 5,
                              name: "Parque Marinha do Brasil",
                              image:
                                "assets/porto_alegre/parque_marinha.png",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => MoinhosScreen()));
                            },
                            child: ActivityWidget(
                              type: "Moinhos de Vento",
                              rating: 5,
                              name: "Parque Moinhos de Vento (Parcão)",
                              image:
                                 "assets/porto_alegre/parque_moinhos.png",
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
                )
              ],
            );
          },
        ));
  }
}
