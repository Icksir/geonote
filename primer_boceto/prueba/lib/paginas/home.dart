import 'package:flutter/material.dart';
import 'dart:core';

class Home extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
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
      backgroundColor: Color.fromRGBO(008, 024, 066, 1),

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
              flex: 1,
              child: Image(
                image: AssetImage('assets/images/titulo_home.png'),
                width: 300,
                height: 150,
              ),
            ),

            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 50.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color.fromRGBO(083, 131, 178, 1),
                  border: Border.all(
                    width: 3.0,
                    color: Colors.white,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 70.0, horizontal: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Último Sismo",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(data['hora'],
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(data['ubicacion'],
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(data['magnitud'],
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FlatButton.icon(
                              onPressed: () {},
                              label: Text(
                                'Detalles',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              color: Color.fromRGBO(033, 069, 128, 0.8),
                              icon: Icon(
                                Icons.info_outline,
                                color: Colors.white,
                              ),
                            ),
                            Container(),
                            FlatButton.icon(
                              onPressed: () {
                                Navigator.pushNamed(context, '/mapa',
                                    arguments: {
                                      'latitud': data['latitud'],
                                      'longitud': data['longitud']
                                    });
                              },
                              color: Color.fromRGBO(033, 069, 128, 0.8),
                              icon: Icon(
                                Icons.location_on_outlined,
                                color: Colors.white,
                              ),
                              label: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Mapa',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // ULTIMOS SISMOS
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 40.0, 50.0),
                    child: FloatingActionButton(
                      onPressed: () =>
                          widget._scaffoldKey.currentState.openDrawer(),
                      child: Icon(Icons.dehaze),
                      backgroundColor: Color.fromRGBO(083, 131, 178, 1),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 30.0, 15.0),
                  child: Card(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                    color: Color.fromRGBO(083, 131, 178, 1),
                    child: FlatButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/ultSismos');
                      },
                      icon: Icon(
                        Icons.announcement_rounded,
                      ),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Text('Últimos Sismos'),
                      ),
                    ),
                  ),
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
