import 'package:flutter/material.dart';
import 'package:prueba/servicios/api.dart';

class Sismos extends StatefulWidget {
  @override
  _SismosState createState() => _SismosState();
}

class _SismosState extends State<Sismos> {
  List data = [];
  /* Future <Map> recabarDatos(int index) async {
    GaelApi instancia = GaelApi();
    Map datos = await instancia.getDatos(index);
    return datos
  } */

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Últimos Sismos'),
      ),
      body: ListView.builder(
          /* children: const <Widget>[
        Card(
            child: ListTile(
          title: Text("2do", style: TextStyle(fontSize: 12)),
          subtitle: Text("",
              style: TextStyle(fontSize: 12)),
          isThreeLine: true,
        ),)
      ] */

          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 5.0),
              child: SizedBox(
                height: 80,
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          child: Text(
                              "${data[index]['Fecha']}\n${data[index]['RefGeografica']}\n${data[index]['Magnitud']}",
                              style: TextStyle(fontSize: 15)),
                          padding:
                              const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
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
                                  icon: Icon(Icons.map),
                                  label: Text(
                                    "Mapa",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              child: FlatButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.info_outline),
                                label: Text(
                                  "Detalles",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            )
                          ],
                        ),

                        /* FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/mapa', arguments: {
                              'latitud': data[index]['Latitud'],
                              'longitud': data[index]['Longitud']
                            });
                          },
                          child: Text(
                            "Mapa",
                            style: TextStyle(fontSize: 16),
                          ),
                        ) */
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
