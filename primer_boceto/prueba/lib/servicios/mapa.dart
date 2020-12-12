import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class Mapa extends StatefulWidget {
  @override
  _MapaState createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  Set<Marker> _markers = LinkedHashSet<Marker>();
  Set<Circle> _circles = LinkedHashSet<Circle>();
  GoogleMapController _mapController;
  Location _locationTracker = Location();
  Marker markerLocation;

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    final Map<String, Object> data = ModalRoute.of(context).settings.arguments;
    double latitud = double.parse(data['latitud']);
    double longitud = double.parse(data['longitud']);

    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId("0"),
          position: LatLng(latitud, longitud),
          infoWindow: InfoWindow(title: 'Sismo'),
        ),
      );
      _circles.add(
        Circle(
          circleId: CircleId("0"),
          center: LatLng(latitud, longitud),
          radius: 20000,
          fillColor: Color.fromRGBO(215, 44, 44, 0.3),
          strokeColor: Colors.transparent,
        ),
      );
      _circles.add(
        Circle(
          circleId: CircleId("1"),
          center: LatLng(latitud, longitud),
          radius: 40000,
          fillColor: Color.fromRGBO(215, 44, 44, 0.15),
          strokeColor: Colors.transparent,
        ),
      );
    });
  }

  void updateMarkerAndCircle(LocationData location) {
    LatLng latlng = LatLng(location.latitude, location.longitude);
    this.setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId("1"),
          position: latlng,
          infoWindow: InfoWindow(title: 'Posición actual'),
        ),
      );
      _circles.add(
        Circle(
          circleId: CircleId("2"),
          radius: location.accuracy,
          fillColor: Color.fromRGBO(67, 159, 229, 0.15),
        ),
      );
    });
  }

  void getLocation() async {
    try {
      var location = await _locationTracker.getLocation();

      updateMarkerAndCircle(location);

      _mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          new CameraPosition(
              target: LatLng(location.latitude, location.longitude), zoom: 12),
        ),
      );
    } catch (e) {}
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
              zoom: 9,
              target: LatLng(getLatitud(), getLongitud()),
            ),
            markers: _markers,
            circles: _circles,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.location_searching),
        onPressed: () {
          getLocation();
        },
      ),
    );
  }
}
