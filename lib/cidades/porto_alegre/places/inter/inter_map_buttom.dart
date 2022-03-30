import 'package:flutter/material.dart';
import 'package:travel_rs/cidades/porto_alegre/places/inter/maps/maps_tab_gremio.dart';
import 'package:travel_rs/models/ui_helper.dart';

class InterMapButton extends StatelessWidget {
  final double currentSearchPercent;
  final double currentExplorePercent;

  final double bottom;
  final double offsetX;
  final double width;
  final double height;

  final IconData icon;
  final Color iconColor;
  final bool isRight;
  final Gradient gradient;

  const InterMapButton(
      {Key key,
      this.currentSearchPercent,
      this.currentExplorePercent,
      this.bottom,
      this.offsetX,
      this.width,
      this.height,
      this.icon,
      this.iconColor,
      this.isRight = true,
      this.gradient})
      : assert(currentExplorePercent != null),
        assert(currentExplorePercent != null),
        assert(bottom != null),
        assert(offsetX != null),
        assert(width != null),
        assert(height != null),
        assert(icon != null),
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
          padding: EdgeInsets.only(left: realW(17)),
          child: IconButton(
            icon: Icon(icon),
            iconSize: realW(34),
            color: iconColor ?? Colors.black, onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => InterMaps()
                )
              );
            },
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
