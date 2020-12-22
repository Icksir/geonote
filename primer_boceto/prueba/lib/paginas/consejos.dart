import 'package:flutter/material.dart';

class Consejos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(008, 024, 066, 1),
        title: Text('Procedimiento y recomendaciones'),
      ),
      backgroundColor: Color.fromRGBO(033, 069, 128, 1),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 80,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  side: BorderSide(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/procedimiento_previo');
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.lightbulb_outline, color: Colors.black),
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
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  side: BorderSide(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
                color: Colors.white,
                child: FlatButton(
                  onPressed: () {
                    print("si");
                    Navigator.pushNamed(context, '/procedimiento_durante');
                  },
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.lightbulb_outline, color: Colors.black),
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
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                      side: BorderSide(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                    color: Colors.white,
                    child: FlatButton(
                      onPressed: () {
                        print("si");
                        Navigator.pushNamed(context, '/procedimiento_post');
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.lightbulb_outline, color: Colors.black),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 10),
                            child: Text(
                              "Despues el sismo",
                              style: TextStyle(fontSize: 15),
                            ),
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
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                      side: BorderSide(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                    color: Colors.white,
                    child: FlatButton(
                      onPressed: () {
                        print("si");
                        Navigator.pushNamed(context, '/recomendaciones');
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.lightbulb_outline, color: Colors.black),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 10),
                            child: Text(
                              "Recomendaciones",
                              style: TextStyle(fontSize: 15),
                            ),
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
