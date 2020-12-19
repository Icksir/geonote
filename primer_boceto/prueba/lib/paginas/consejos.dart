import 'package:flutter/material.dart';

class Consejos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Procedimiento y recomendaciones'),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 80,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
              child: Card(
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/procedimiento_previo');
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.lightbulb_outline),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 10),
                        child: Text(
                          "Antes del sismo",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 80,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
              child: Card(
                child: FlatButton(
                  onPressed: () {
                    print("si");
                    Navigator.pushNamed(context, '/procedimiento_durante');
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.lightbulb_outline),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 10),
                        child: Text(
                          "Durante el sismo",
                          style: TextStyle(fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
              height: 80,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
                child: Card(
                    child: FlatButton(
                  onPressed: () {
                    print("si");
                    Navigator.pushNamed(context, '/procedimiento_post');
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.lightbulb_outline),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 10),
                        child: Text("Despues el sismo",
                            style: TextStyle(fontSize: 15)),
                      )
                    ],
                  ),
                )),
              )),
          SizedBox(
              height: 80,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
                child: Card(
                    child: FlatButton(
                  onPressed: () {
                    print("si");
                    Navigator.pushNamed(context, '/recomendaciones');
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.lightbulb_outline),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 10),
                        child: Text("Recomendaciones",
                            style: TextStyle(fontSize: 15)),
                      )
                    ],
                  ),
                )),
              ))
        ],
        /* children: const <Widget>[
        Card(
            child: ListTile(
          title: Text("2do", style: TextStyle(fontSize: 12)),
          subtitle: Text("",
              style: TextStyle(fontSize: 12)),
          isThreeLine: true,
        ),)
      ] */
      ),
    );
  }
}
