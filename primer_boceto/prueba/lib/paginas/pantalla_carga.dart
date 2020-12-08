import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'dart:core';

import 'package:prueba/paginas/home.dart';

class Carga extends StatefulWidget {
  @override
  _CargaState createState() => _CargaState();
}

class _CargaState extends State<Carga> {
  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SpinKitCircle(
          color: Color(0xff3f51b5),
          size: 80.0,
        ),
      ),
    );
  }
}
