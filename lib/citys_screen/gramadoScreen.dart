import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:travel_rs/cidades/gramado/places/lago/lago_Screen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/belem/belem_screen.dart';
import 'package:travel_rs/cidades/porto_alegre/places/botanico/botanicoScreen.dart';
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

class GramadoScreen extends StatefulWidget {
  @override
  _GramadoScreenState createState() => _GramadoScreenState();
}

class _GramadoScreenState extends State<GramadoScreen> {
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
                          Text("Gramado",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w500)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Serra Gaucha",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: getScale(15.0))),
                            ],
                          )
                        ],
                      ),
                    ),
                    background: Hero(
                      tag: "Gramado",
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40.0),
                            bottomRight: Radius.circular(40.0)),
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/gramado/gramado.jpg"),
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
                                  builder: (context) => LagoScreen()));
                            },
                            child: ActivityWidget(
                              type: "Serra Gaúcha",
                              rating: 5,
                              name: "Lago Negro",
                              image:
                                  "assets/gramado/lago_negro.jpg",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => GremioScreen()));
                            },
                            child: ActivityWidget(
                              type: "Serra Gaúcha",
                              rating: 5,
                              name: "Mini Mundo",
                              image:
                                  "assets/gramado/mini_mundo.jpg",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => InterScreen()));
                            },
                            child: ActivityWidget(
                              type: "Serra Gaúcha",
                              rating: 5,
                              name: "Aldeia do Papai Noel",
                              image:
                                  "assets/gramado/aldeia.jpg",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SantuarioScreen()));
                            },
                            child: ActivityWidget(
                              type: "Serra Gaúcha",
                              rating: 5,
                              name: "Rua Coberta",
                              image:
                                  "assets/gramado/coberta.jpg",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => BelemScreen()));
                            },
                            child: ActivityWidget(
                              type: "Serra Gaúcha",
                              rating: 5,
                              name: "Museu do Automóvel – Hollywood Dream Cars",
                              image:
                                 "assets/gramado/drin_carros.jpg",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => CatedralScreen()));
                            },
                            child: ActivityWidget(
                              type: "Serra Gaúcha",
                              rating: 5,
                              name: "Super Carros",
                              image:
                                  "assets/gramado/super_carros.jpg",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => IpanemaScreen()));
                            },
                            child: ActivityWidget(
                              type: "Serra Gaúcha",
                              rating: 5,
                              name: "Dreamland Museu de Cera",
                              image:
                                 "assets/gramado/cera.jpg",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => BotanicoScreen()));
                            },
                            child: ActivityWidget(
                              type: "Serra Gaúcha",
                              rating: 5,
                              name: "Gramado Zoo",
                              image:
                                  "assets/gramado/zoo.jpg",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ParqueScreen()));
                            },
                            child: ActivityWidget(
                              type: "Serra Gaúcha",
                              rating: 5,
                              name: "Palácio dos Festivais",
                              image:
                                 "assets/gramado/cinema.jpg",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => QuintanaScreen()));
                            },
                            child: ActivityWidget(
                              type: "Serra Gaúcha",
                              rating: 5,
                              name: "Rua Torta",
                              image:
                                 "assets/gramado/torta.jpg",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => MercadoScreen()));
                            },
                            child: ActivityWidget(
                              type: "Serra Gaúcha",
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
                              type: "Serra Gaúcha",
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
                              type: "Serra Gaúcha",
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
                              type: "Serra Gaúcha",
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
