import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
                      Text("Hora: 23:33"),
                      Text("Lugar: Villa Alemana"),
                      Text("Magnitud: 5,2")
                    ],
                  ),
                ),
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
            /* Expanded(
              flex: 1,
              child: Card(
                color: Color(0xff757de8),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: Text(
                      "Últimos Sismos",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ), */
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/consejos');
              },
              icon: Icon(
                Icons.help,
              ),
              label: Text('Procedimientos de seguridad y consejos'),
            ),
            /* Expanded(
              flex: 1,
              child: Card(
                color: Color(0xff757de8),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: Text(
                      "Procedimientos de seguridad y consejos",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ), */
            FlatButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/config');
              },
              icon: Icon(
                Icons.handyman_outlined,
              ),
              label: Text('Configuraciones'),
            ),
            /* Expanded(
              flex: 1,
              child: Card(
                color: Color(0xff757de8),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                    child: Text(
                      "Configuraciones",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ), */
            Expanded(
              flex: 1,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
