import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Config extends StatefulWidget {
  @override
  _ConfigState createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  var _lista = ["Santiago", "Valparaiso", "Vina del Mar", "Talca"];
  String _menu = "Seleccione una opcion:";
  bool _checkBoxValue = false;

  Future<Null> saveOption(bool isSelected) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('option', isSelected);
  }

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
                title: Text("¿Quieres recibir notificaciones de los sismos?",
                    style: TextStyle(fontSize: 17)),
                secondary: Icon(Icons.notification_important_outlined),
                controlAffinity: ListTileControlAffinity.platform,
                value: _checkBoxValue,
                onChanged: (bool value) {
                  setState(() {
                    _checkBoxValue = value;
                  });
                }),
            DropdownButton(
                items: _lista.map((String bbb) {
                  return DropdownMenuItem(value: bbb, child: Text(bbb));
                }).toList(),
                onChanged: (_value) => {
                      setState(() {
                        _menu = _value;
                      })
                    },
                hint: Text(_menu))
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
}
