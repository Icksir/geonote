import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapa extends StatefulWidget {
  @override
  _MapaState createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  Set<Marker> _markers = LinkedHashSet<Marker>();
  GoogleMapController _mapController;

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    final Map<String, Object> data = ModalRoute.of(context).settings.arguments;

    setState(() {
      _markers.add(Marker(
        markerId: MarkerId("0"),
        position: LatLng(
            double.parse(data['latitud']), double.parse(data['longitud'])),
        infoWindow: InfoWindow(title: 'Sismo'),
      ));
    });
  }

  Set<Circle> circles(latitud, longitud) {
    return Set.from([
      Circle(
        circleId: CircleId("0"),
        center: LatLng(latitud, longitud),
        radius: 20000,
        fillColor: Color.fromRGBO(215, 44, 44, 0.3),
        strokeColor: Colors.transparent,
      ),
      Circle(
        circleId: CircleId("1"),
        center: LatLng(latitud, longitud),
        radius: 40000,
        fillColor: Color.fromRGBO(215, 44, 44, 0.15),
        strokeColor: Colors.transparent,
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    double getLatitud() {
      final Map<String, Object> data =
          ModalRoute.of(context).settings.arguments;
      return double.parse(data['latitud']);
    }

    double getLongitud() {
      final Map<String, Object> data =
          ModalRoute.of(context).settings.arguments;
      return double.parse(data['longitud']);
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('Ubicación'),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                zoom: 10,
                target: LatLng(getLatitud(), getLongitud()),
              ),
              markers: _markers,
              circles: circles(getLatitud(), getLongitud()),
            ),
          ],
        ));
  }
}
