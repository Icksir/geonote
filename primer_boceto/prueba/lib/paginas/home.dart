import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:core';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //VARIABLES ULTIMO SISMO

  String fecha = "";
  String lugar = "";
  String magnitud = "";

  //FUNCION PARA CONECTAR CON API
  List data;



  Future<String> getData() async {
    http.Response response = await http.get(
        Uri.encodeFull("https://api.gael.cl/general/public/sismos"),
        headers: {
          "Accept": "application/json"
        }
    );
    this.setState(() {
      data = json.decode(response.body);
    });
  }

  String ultSismo() {
    getData();
    if (data.length>0) {
      setState(() {
        fecha = data[0]["Fecha"];
        lugar = data[0]["RefGeografica"];
        magnitud = data[0]["Magnitud"];
      });
    }
    debugPrint("ULTSISMO");
  }

  @override
  Widget build(BuildContext context) {
    Timer.periodic(new Duration(seconds: 10), (timer) {
      ultSismo();
    });
    return Scaffold(
      backgroundColor: Color(0xFFf8fdff),

      // Creo que para la parte principal quedaría más bonito
      // sin la appBar, y eso fuera para el resto de las páginas secundarias.
      // comenté las barras para convertirlas a botones
      //

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.all(20.0),
                color: Color(0xff3f51b5),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 70.0, horizontal: 35.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Último Sismo",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(fecha),
                      Text(lugar),
                      Text(magnitud)
                    ],
                  ),
                ),
              ),
            ),

            // ULTIMOS SISMOS
            Column(
              children: [
                FlatButton.icon(
                  onPressed: () {

                    //Navigator.pushNamed(context, '/ultSismos');
                  },
                  icon: Icon(
                    Icons.announcement_rounded,
                  ),
                  label: Text('Últimos Sismos'),
                ),
                // CONSEJOS
                FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/consejos');
                  },
                  icon: Icon(
                    Icons.help,
                  ),
                  label: Text('Procedimientos de seguridad y consejos'),
                ),
                // CONFIGURACION
                FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/config');
                  },
                  icon: Icon(
                    Icons.handyman_outlined,
                  ),
                  label: Text('Configuraciones'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
