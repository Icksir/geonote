import 'package:flutter/material.dart';
import 'package:prueba/paginas/home.dart';
import 'package:prueba/paginas/pantalla_carga.dart';
import 'package:prueba/paginas/config.dart';
import 'package:prueba/paginas/consejos.dart';
import 'package:prueba/paginas/ultimos_sismos.dart';
import 'package:prueba/servicios/mapa.dart';
import 'package:prueba/paginas/procedimiento_previo.dart';
import 'package:prueba/paginas/procedimiento_durante.dart';
import 'package:prueba/paginas/procedimiento_post.dart';
import 'package:prueba/paginas/recomendaciones.dart';
import 'package:prueba/paginas/zonas_seguras.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  //await SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Carga(),
        '/home': (context) => Home(),
        '/config': (context) => Config(),
        '/consejos': (context) => Consejos(),
        '/ultSismos': (context) => Sismos(),
        '/mapa': (context) => Mapa(),
        '/procedimiento_previo': (context) => ProcedimientoPrevio(),
        '/procedimiento_durante': (context) => ProcedimientoDurante(),
        '/procedimiento_post': (context) => ProcedimientoPost(),
        '/recomendaciones': (context) => Recomendaciones(),
        '/zonas_seguras': (context) => ZonasSeguras(),
      },
    ),
  );
}

/* void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) {
      runApp(
        MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (context) => Carga(),
            '/home': (context) => Home(),
            '/config': (context) => Config(),
            '/consejos': (context) => Consejos(),
            '/ultSismos': (context) => Sismos(),
            '/mapa': (context) => Mapa(),
            '/procedimiento_previo': (context) => ProcedimientoPrevio(),
            '/procedimiento_durante': (context) => ProcedimientoDurante(),
            '/procedimiento_post': (context) => ProcedimientoPost(),
            '/recomendaciones': (context) => Recomendaciones(),
            '/zonas_seguras': (context) => ZonasSeguras(),
          },
        ),
      );
    },
  );
} */

/* void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Carga(),
        '/home': (context) => Home(),
        '/config': (context) => Config(),
        '/consejos': (context) => Consejos(),
        '/ultSismos': (context) => Sismos(),
        '/mapa': (context) => Mapa(),
        '/procedimiento_previo': (context) => ProcedimientoPrevio(),
        '/procedimiento_durante': (context) => ProcedimientoDurante(),
        '/procedimiento_post': (context) => ProcedimientoPost(),
        '/recomendaciones': (context) => Recomendaciones(),
        '/zonas_seguras': (context) => ZonasSeguras(),
      },
    ),
  );
} */
