import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapa extends StatefulWidget {
  @override
  _MapaState createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  @override
  Widget build(BuildContext context) {
    final Map<String, Object> data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          title: Text('Ubicación'),
        ),
        body: GoogleMap(
          initialCameraPosition: CameraPosition(
            zoom: 10,
            target: LatLng(
                double.parse(data['latitud']), double.parse(data['longitud'])),
          ),
        ));
  }
}
