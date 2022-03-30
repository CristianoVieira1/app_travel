
import 'package:flutter/material.dart';
import 'package:travel_rs/cidades/porto_alegre/places/marinha/model/carolsel_marinha.dart';
import 'package:travel_rs/models/ui_helper.dart';


class MarinhaContentWidget extends StatelessWidget {
  final double currentExplorePercent;
  const MarinhaContentWidget({Key key, this.currentExplorePercent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (currentExplorePercent != 0) {
      return Positioned(
        top: realH(
            standardHeight + (162 - standardHeight) * currentExplorePercent),
        width: screenWidth,
        child: Container(
          height: screenHeight,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              Opacity(
                opacity: currentExplorePercent,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      child: Transform.translate(
                        offset: Offset(
                            screenWidth / 3 * (1 - currentExplorePercent),
                            screenWidth / 3 / 2 * (1 - currentExplorePercent)),
                        child: Image.asset(
                          "assets/porto_alegre/marinha/iconMarinha1.png",
                          width: realH(133),
                          height: realH(133),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        "assets/porto_alegre/marinha/iconMarinha2.png",
                        width: realH(133),
                        height: realH(133),
                      ),
                    ),
                    Expanded(
                      child: Transform.translate(
                        offset: Offset(
                            -screenWidth / 3 * (1 - currentExplorePercent),
                            screenWidth / 3 / 2 * (1 - currentExplorePercent)),
                        child: Image.asset(
                          "assets/porto_alegre/marinha/iconMarinha3.png",
                          width: realH(133),
                          height: realH(133),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: DestinationCarouselMarinha(),
              ),
              Transform.translate(
                  offset:
                      Offset(0, realH(58 + 570 * (1 - currentExplorePercent))),
                  child: Opacity(
                    opacity: currentExplorePercent,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: realW(22)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: realW(22)),
                            child: Text("Parque Marinha do Brasil",
                                style: const TextStyle(
                                    color: Colors.white54,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Stack(
                            children: <Widget>[
                              Image.asset(
                                "assets/porto_alegre/marinha/marinha10.png",
                              ),
                              Positioned(
                                  bottom: realH(26),
                                  left: realW(24),
                                  child: Text(
                                    "Skate Park",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                        fontSize: realW(12)),
                                  ))
                            ],
                          ),
                            Transform.translate(
                            offset: Offset(0, realH(40 - 30 * (currentExplorePercent - 0.75) * 4)),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Image.asset("assets/porto_alegre/marinha/marinha20.png",),
                                ),
                                SizedBox(width: 10.0,),
                                Expanded(
                                  child: Image.asset("assets/porto_alegre/marinha/marinha30.png",),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(bottom: realH(262)),
              )
            ],
          ),
        ),
      );
    } else {
      return const Padding(
        padding: const EdgeInsets.all(0),
      );
    }
  }

  buildListItem(int index, String name) {
    return Transform.translate(
      offset: Offset(0, index * realH(127) * (1 - currentExplorePercent)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            "assets/banner_${index % 3 + 1}.png",
            width: realH(127),
            height: realH(127),
          ),
        ],
      ),
    );
  }
}
