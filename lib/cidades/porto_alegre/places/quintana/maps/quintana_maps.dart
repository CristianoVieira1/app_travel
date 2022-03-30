import 'dart:async';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';

class QuintanaMaps extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => QuintanaMapsState();
}

class QuintanaMapsState extends State<QuintanaMaps> {
  final List<MapDestination> _destinations = [
    MapDestination("Casa de Cultura Mario Quintana", _kLondonEye),
  ];
  static const MethodChannel methodChannel = const MethodChannel('com.faisalabid/maps');


  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kLondonEye =
      CameraPosition(target: LatLng(-30.031378, -51.234347), zoom: 14.4746);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Casa de Cultura Mario Quintana"),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.arrowLeft),
          color: Colors.white, onPressed: () {
            Navigator.of(context).pushReplacementNamed('/quintana');
          },
        ),
        actions: <Widget>[
          Container(
            height: 80.0,
            width: 80.0,
            child: FlareActor(
            "assets/map.flr",
            animation: "pulo",
            fit: BoxFit.contain,
            
        ),
          ),
            
        ],
      ),
      body: GoogleMap(
        markers: List<Marker>.generate(_destinations.length, (index) {
          return Marker(markerId: MarkerId(index.toString()), position: _destinations[index].cameraPosition.target);
      }).toSet(),
        mapType: MapType.normal,
        initialCameraPosition: _kLondonEye,
        onMapCreated: (controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => MapsLauncher.launchCoordinates(
                    -30.031378, -51.234347, 'Mario Quintana'),
        label: Text("Vamos até Lá!"),
        icon: Icon(Icons.drive_eta),
      ),
    );
  }

  // Future<void> _goToDestination(CameraPosition destination) async {
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newCameraPosition(destination));
  // }

  // void _destinationModalBottomSheet(context) {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (BuildContext buildContext) {
  //         return Container(
  //           child: Wrap(
  //             children: List<Widget>.generate(_destinations.length, (index) {
  //               return ListTile(
  //                   title: Text(_destinations[index].name),
  //                   onTap: () {
  //                     Navigator.pop(context);
  //                     _goToDestination(_destinations[index].cameraPosition);
  //                   });
  //             }),
  //           ),
  //         );
  //       });
  // }
  
}

class MapDestination {
  final String name;
  final CameraPosition cameraPosition;

  MapDestination(this.name, this.cameraPosition);
}