import 'package:flutter/material.dart';
import 'package:prueba/paginas/home.dart';
import 'package:prueba/paginas/pantalla_carga.dart';
import 'package:prueba/paginas/config.dart';
import 'package:prueba/paginas/consejos.dart';
import 'package:prueba/paginas/ultimos_sismos.dart';

// Agregué las rutas que deberían haber
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Carga(),
      '/home': (context) => Home(),
      '/config': (context) => Config(),
      '/consejos': (context) => Consejos(),
      '/ultSismos': (context) => Sismos(),
    },
  ));
}
