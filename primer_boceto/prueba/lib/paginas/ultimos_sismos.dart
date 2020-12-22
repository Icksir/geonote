import 'package:flutter/material.dart';

class Sismos extends StatefulWidget {
  @override
  _SismosState createState() => _SismosState();
}

class _SismosState extends State<Sismos> {
  List data = [];

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(008, 024, 066, 1),
        title: Text('Últimos Sismos'),
      ),
      backgroundColor: Color.fromRGBO(033, 069, 128, 1),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          String texto = "No se ha podido obtener los datos";
          if (data != null) {
            if (data[0] != null) {
              texto =
                  "${data[index]['Fecha']}\n${data[index]['RefGeografica']}\n${data[index]['Magnitud']}";
            }
          }
          return Container(
            height: 100,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 5.0),
              child: SizedBox(
                height: 80,
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
                  color: Color.fromRGBO(083, 131, 178, 1),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: Padding(
                          child: Text(
                            "$texto",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          padding:
                              const EdgeInsets.fromLTRB(15.0, 10.0, 12.0, 10.0),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                              child: SizedBox(
                                height: 30,
                                child: FlatButton.icon(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/mapa',
                                        arguments: {
                                          'latitud': data[index]['Latitud'],
                                          'longitud': data[index]['Longitud']
                                        });
                                  },
                                  icon: Icon(Icons.location_on_outlined,
                                      color: Colors.white),
                                  label: Text(
                                    "Mapa",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              child: FlatButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.info_outline,
                                    color: Colors.white),
                                label: Text(
                                  "Detalles",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
