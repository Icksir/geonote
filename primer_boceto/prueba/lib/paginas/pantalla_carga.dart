import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:core';
import 'package:prueba/servicios/api.dart';

class Carga extends StatefulWidget {
  @override
  _CargaState createState() => _CargaState();
}

class _CargaState extends State<Carga> {
  void recabarDatos() async {
    GaelApi instancia = GaelApi();
    await instancia.getDatos();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'magnitud': instancia.magnitud,
      'ubicacion': instancia.ubicacion,
      'latitud': instancia.latitud,
      'longitud': instancia.longitud,
      'hora': instancia.hora
    });
  }

  /* List datos;
    Future<void> getDatos() async {
      http.Response response = await http.get(
          Uri.encodeFull("https://api.gael.cl/general/public/sismos"),
          headers: {"Accept": "application/json"});
      setState(() {
        datos = json.decode(response.body);
      });
    } */
  /* while (datos==null) {
      getDatos();
    }
    Navigator.of(context).push(MaterialPageRoute<Null>(
        builder: (BuildContext context){
          return new Home();
        }
    )); */

  @override
  void initState() {
    super.initState();
    recabarDatos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('cargando'),
    ));
  }
}
