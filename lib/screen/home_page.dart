import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:travel_rs/cards/home_card.dart';
import 'package:travel_rs/models/user_model.dart';
import 'package:travel_rs/videos/video_rs.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

    Future<bool> _onBackPressed(){
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Quer realmente sair",
        style: TextStyle(
          color: Colors.blueAccent,
          fontFamily: 'Montserrat',
          
        ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text("Não"),
            onPressed: ()=>Navigator.pop(context, false),
          ),
          FlatButton(
            child: Text("Sim"),
            onPressed: () => exit(0),
          )
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: _onBackPressed,
          label: Text('Sair'),
          icon: Icon(Icons.exit_to_app),
          backgroundColor: Colors.pinkAccent,
        ),
        backgroundColor: Colors.grey[100],
        body: CustomScrollView(
              controller: _scrollController,
              slivers: <Widget>[
                SliverAppBar(
                  actionsIconTheme: null,
                  iconTheme: null,
                  expandedHeight: 300,
                  pinned: true,
                  backgroundColor: (_isExpanded)
                      ? Colors.lightBlueAccent
                      : Colors.transparent,
                   flexibleSpace: FlexibleSpaceBar(
                    title: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Rio Grande do Sul",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w500)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Gauchada",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: getScale(10.0))),
                            ],
                          )
                        ],
                      ),
                    ),
                    background: Hero(
                      tag: "Rio Grande do Sul",
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40.0),
                            bottomRight: Radius.circular(40.0)),
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/rs.jpg"),
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
                                        builder: (context) => VideoRs()
                                      )
                                    );
                    },
                  ),
                ]
                ),
                ScopedModelDescendant<UserModel>(
          builder: (context, child, model) {
            if (model.isLoading)
              return Center(
                child: SpinKitRipple(
                  color: Colors.blueAccent,
                  size: 200.0,
                ),
              );
            return 
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          PortoHome(),
                          Gramado(),
                          Canela(),
                          SaoFranciscoDePaula(),
                          Cambara(),
                          BentoGoncalves(),
                          Caxias(),
                          CarlosBarbosa(),
                          Farroupilha(),
                          Garibaldi(),
                          PetropolisScreen(),
                          VeranopolisScreen(),
                          SantaCruz(),
                          NovaPrata(),
                          SaoMiguel(),
                          TorresScreen(),
                          CapaoScreen(),
                          TramandaiScreen(),
                          ImbeScreen(),
                          BageScreen(),
                          PassoFundoScreen(),
                          PelotasScreen(),
                          RioGrandeScreen(),
                          SantaRosaScreen(),
                          IjuiScreen(),
                          UruguaianaScreen()
                        ],
                      ),
                    ))
                  ]),
                );
          }
                ),
              ],
            ),
          
        );
  }
}