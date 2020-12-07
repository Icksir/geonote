import 'package:flutter/material.dart';
import 'package:prueba/paginas/home.dart';
import 'package:prueba/paginas/pantalla_carga.dart';
import 'package:prueba/paginas/config.dart';
import 'package:prueba/paginas/consejos.dart';
import 'package:prueba/paginas/ultimos_sismos.dart';
import 'package:prueba/servicios/mapa.dart';

// Agregué las rutas que deberían haber
void main() {
  runApp(MaterialApp(
    //La ruta principal debería ser '/' para que cargue todos los datos, pero
    //creo que es mejor dejarla en home primero para ir testeando.

    initialRoute: '/home',

    routes: {
      '/': (context) => Carga(),
      '/home': (context) => Home(),
      '/config': (context) => Config(),
      '/consejos': (context) => Consejos(),
      '/ultSismos': (context) => Sismos(),
      '/mapa': (context) => Mapa(),
    },
  ));
}
