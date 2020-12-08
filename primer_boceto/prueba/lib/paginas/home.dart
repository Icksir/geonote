import 'package:flutter/material.dart';
import 'dart:core';

class Home extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //FUNCION QUE INICIA EL DICCIONARIO QUE CONTIENE LOS DATOS DE LA API
  Map data = {};

  //FUNCION PARA CONECTAR CON API
/*   List data; */

  // ignore: missing_return
  /* Future<String> getData() async {
    http.Response response = await http.get(
        Uri.encodeFull("https://api.gael.cl/general/public/sismos"),
        headers: {"Accept": "application/json"});
    this.setState(() {
      data = json.decode(response.body);
    });
  }

  String ultSismo() {
    getData();
    if (data != null) {
      setState(() {
        fecha = data[0]["Fecha"];
        lugar = data[0]["RefGeografica"];
        magnitud = data[0]["Magnitud"];
      });
    }
    debugPrint("**Datos de api recolectados**");
  }
 */
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data);
/*     ultSismo();
    Timer.periodic(new Duration(minutes: 3), (timer) {
      ultSismo();
    }); */
    return Scaffold(
      backgroundColor: Color(0xFFf8fdff),

      // Creo que para la parte principal quedaría más bonito
      // sin la appBar, y eso fuera para el resto de las páginas secundarias.
      // comenté las barras para convertirlas a botones
      //
      key: widget._scaffoldKey,
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[Text("owo")],
        ),
      ),
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
                      Text(data['hora']),
                      Text(data['ubicacion']),
                      Text(data['magnitud']),
                      FlatButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/mapa');
                        },
                        icon: Icon(Icons.map),
                        label: Text('Mapa'),
                      )
                    ],
                  ),
                ),
              ),
            ),

            // ULTIMOS SISMOS
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 10.0, 8.0),
                  child: Expanded(
                    flex: 1,
                    child: FloatingActionButton(
                        onPressed: () =>
                            widget._scaffoldKey.currentState.openDrawer(),
                        child: Icon(Icons.dehaze)),
                  ),
                ),
                FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/ultSismos');
                  },
                  icon: Icon(
                    Icons.announcement_rounded,
                  ),
                  label: Text('Últimos Sismos'),
                ),
                // CONSEJOS
                /* FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/consejos');
                  },
                  icon: Icon(
                    Icons.help,
                  ),
                  label: Text('Procedimientos de seguridad y consejos'),
                ), */
                // CONFIGURACION
                /* FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/config');
                  },
                  icon: Icon(
                    Icons.handyman_outlined,
                  ),
                  label: Text('Configuraciones'),
                ), */
              ],
            ),
          ],
        ),
      ),
    );
  }
}
