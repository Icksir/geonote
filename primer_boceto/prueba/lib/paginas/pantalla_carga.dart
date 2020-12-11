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
    Navigator.pushReplacementNamed(context, '/home', arguments: [
      instancia.sismo1,
      instancia.sismo2,
      instancia.sismo3,
      instancia.sismo4,
      instancia.sismo5,
      instancia.sismo6,
    ]);
  }

  @override
  void initState() {
    super.initState();
    recabarDatos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitRipple(
          color: Colors.white,
          size: 80,
        ),
      ),
      backgroundColor: Colors.blue[800],
    );
  }
}
