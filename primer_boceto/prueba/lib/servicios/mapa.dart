import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapa extends StatefulWidget {
  @override
  _MapaState createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ubicación'),
        ),
        body: GoogleMap(
          initialCameraPosition: CameraPosition(
            zoom: 10,
            target: LatLng(-35.4264, -71.65542),
          ),
        ));
  }
}
