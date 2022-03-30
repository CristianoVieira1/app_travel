import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:travel_rs/models/ui_helper.dart';

import 'model/carolsel_santuario.dart';

class SantuarioContentWidget extends StatelessWidget {
  final double currentExplorePercent;
  const SantuarioContentWidget({Key key, this.currentExplorePercent})
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
                          "assets/porto_alegre/santuario/sanIcon.png",
                          width: realH(133),
                          height: realH(133),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        "assets/porto_alegre/santuario/sanIcon1.png",
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
                          "assets/porto_alegre/santuario/sanIcon2.png",
                          width: realH(133),
                          height: realH(133),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: DestinationCarouselSantuario(),
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
                            child: Text("Santuario Mãe de Deus",
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
                                "assets/porto_alegre/santuario/santuario10.png",
                              ),
                              Positioned(
                                  bottom: realH(26),
                                  left: realW(24),
                                  child: Text(
                                    "31ª Romaria de Nossa Senhora Mãe de Deus",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: realW(12)),
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
                                  "No dia 1º de Janeiro de 2019, às 18h, acontece a Romaria de Nossa Senhora Mãe de Deus, com saída na Rua do Santuário, esquina à Avenida Oscar Pereira. Além disso, entre os dias 23 e 31 de dezembro teremos Novena todos os dias às 16h. Participe! Nossa Senhora Mãe de Deus espera por você!",
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
