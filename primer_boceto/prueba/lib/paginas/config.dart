import 'package:flutter/material.dart';
import 'package:prueba/paginas/preferencias.dart';

class Config extends StatefulWidget {
  @override
  _ConfigState createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  /* var _lista = ["Santiago", "Valparaiso", "Vina del Mar", "Talca"];
  String _menu = "Seleccione una opcion:"; */
  Preferencias _preferencias = Preferencias();
  /* bool _checkBoxValue = false; */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('Configuración'),
        ),
        body: ListView(
          children: <Widget>[
            SwitchListTile(
                value: _preferencias.automatico,
                title: Text("¿Quieres recibir notificaciones de los sismos?",
                    style: TextStyle(fontSize: 17)),
                secondary: Icon(Icons.notification_important_outlined),
                controlAffinity: ListTileControlAffinity.platform,
                /* value: /* _checkBoxValue ,*/ */
                onChanged: (value) {
                  setState(() {
                    _preferencias.automatico = value;
                    _preferencias.commit();
                  });
                }) /* ,
            DropdownButton(
                items: _lista.map((String bbb) {
                  return DropdownMenuItem(value: bbb, child: Text(bbb));
                }).toList(),
                onChanged: (_value) => {
                      setState(() {
                        _menu = _value;
                      })
                    },
                hint: Text(_menu)) */
          ],
        )
        /*Container(
            child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 5.0, 4.0, 5.0),
                  child: Text("¿Quieres recibir notificaciones de los sismos?",
                      style: TextStyle(fontSize: 17)),
                ),
                Checkbox(
                    value: checkBoxValue,
                    onChanged: (bool value) {
                      setState(() {
                        checkBoxValue = value;
                        print(value);
                      });
                    }),
              ],
            )
          ],
        )) )*/
        );
  }

  @override
  void initState() {
    super.initState();
    _preferencias.init().then((value) {
      setState(() {
        _preferencias = value;
      });
    });
  }
}
