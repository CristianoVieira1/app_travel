import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:travel_rs/models/ui_helper.dart';
import 'package:travel_rs/videos/video_orla.dart';


class QuintanaPlay extends StatelessWidget {

  final DocumentSnapshot snapshot;
  final double currentSearchPercent;
  final double currentExplorePercent;

  final double bottom;
  final double offsetX;
  final double width;
  final double height;

  final bool isRight;
  final Gradient gradient;

  const QuintanaPlay(
      {Key key,
      this.snapshot,
      this.currentSearchPercent,
      this.currentExplorePercent,
      this.bottom,
      this.offsetX,
      this.width,
      this.height,
      this.isRight = true,
      this.gradient})
      : assert(currentExplorePercent != null),
        assert(currentExplorePercent != null),
        assert(bottom != null),
        assert(offsetX != null),
        assert(width != null),
        assert(height != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: realH(bottom),
      left: !isRight ? realW(offsetX * (currentExplorePercent + currentSearchPercent)) : null,
      right: isRight ? realW(offsetX * (currentExplorePercent + currentSearchPercent)) : null,
      child: Opacity(
        opacity: 1 - (currentSearchPercent + currentExplorePercent),
        child: Container(
          width: realW(width),
          height: realH(height),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: realW(13)),
          child: InkWell(
            onTap: (){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => VideoCais()
                )
              );
            },
            child: FlareActor(
              "assets/play.flr",
              animation: "play",
              fit: BoxFit.contain,
              
        ),
          ),
          decoration: BoxDecoration(
              color: gradient == null ? Colors.white : null,
              gradient: gradient,
              borderRadius: isRight
                  ? BorderRadius.only(bottomLeft: Radius.circular(realW(36)), topLeft: Radius.circular(realW(36)))
                  : BorderRadius.only(bottomRight: Radius.circular(realW(36)), topRight: Radius.circular(realW(36))),
              boxShadow: [
                BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.3), blurRadius: realW(36)),
              ]),
        ),
      ),
    );
  }
}
