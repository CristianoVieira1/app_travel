import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:travel_rs/cidades/porto_alegre/places/catedral/model/carolsel_catedral.dart';
import 'package:travel_rs/models/ui_helper.dart';


class CatedralContentWidget extends StatelessWidget {
  final double currentExplorePercent;
  const CatedralContentWidget({Key key, this.currentExplorePercent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (currentExplorePercent != 0) {
      return Positioned(
        top: realH(standardHeight + (162 - standardHeight) * currentExplorePercent),
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
                        offset: Offset(screenWidth / 3 * (1 - currentExplorePercent),
                            screenWidth / 3 / 2 * (1 - currentExplorePercent)),
                        child: Image.asset(
                          "assets/porto_alegre/catedral/sanIcon.png",
                          width: realH(133),
                          height: realH(133),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        "assets/porto_alegre/catedral/sanIcon1.png",
                        width: realH(133),
                        height: realH(133),
                      ),
                    ),
                    Expanded(
                      child: Transform.translate(
                        offset: Offset(-screenWidth / 3 * (1 - currentExplorePercent),
                            screenWidth / 3 / 2 * (1 - currentExplorePercent)),
                        child: Image.asset(
                          "assets/porto_alegre/catedral/sanIcon2.png",
                          width: realH(133),
                          height: realH(133),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
        child: DestinationCarouselCatedral(),
         
      ),
              Transform.translate(
                  offset: Offset(0, realH(58 + 570 * (1 - currentExplorePercent))),
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
                            child: Text("Missas",
                                style:
                                    const TextStyle(color: Colors.white54, fontSize: 13, fontWeight: FontWeight.bold)),
                          ),
                          Stack(
                            children: <Widget>[
                              Image.asset(
                                "assets/porto_alegre/catedral/missa.png",
                              ),
                              Positioned(
                                  bottom: realH(26),
                                  left: realW(24),
                                  child: Text(
                                    "Catedral Metropolitana",
                                    style: TextStyle(color: Colors.white, fontSize: realW(16)),
                                  ))
                            ],
                          ),
                         Transform.translate(
                            offset: Offset(
                                0,
                                realH(30 -
                                    30 * (currentExplorePercent - 0.75) * 2)),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: AutoSizeText(
                                  "A c??pula possui 65 metros de altura do n??vel da Pra??a, enquanto as torres somente 50m, a fim de, em menor propor????o, tornarem sim??trico o conjunto e n??o diminuirem a grandiosidade do zimb??rio. A c??pula tem um di??metro interno de quase 18 metros, maior que o da c??pula de Santo Andr?? della Valle, em Roma (16,50m), a maior c??pula romana at?? ent??o, depois da de S??o Pedro, que tem 42m de di??metro. Junto ?? c??pula formam, estaticamente, quase que contrafortes, as semi-c??pulas das ??bsides esteticamente se ajustam com as massas prism??ticas das naves.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w400),
                                )),
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
