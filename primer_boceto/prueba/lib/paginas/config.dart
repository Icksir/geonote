import 'package:flutter/material.dart';
import 'package:prueba/servicios/preferencias.dart';
import 'package:smart_select/smart_select.dart';

class Config extends StatefulWidget {
  @override
  _ConfigState createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  /* var _lista = ["Santiago", "Valparaiso", "Vina del Mar", "Talca"];
  String _menu = "Seleccione una opcion:"; */
  Preferencias _preferencias = Preferencias();
  /* bool _checkBoxValue = false; */

  List<String> value1 = [];
  List<S2Choice<String>> ciudades1 = [
    S2Choice<String>(value: "1", title: 'Santiago'),
    S2Choice<String>(value: "2", title: 'Viña del mar'),
    S2Choice<String>(value: "3", title: 'Valparaíso'),
    S2Choice<String>(value: "4", title: 'Talca (aunque no exista)'),
  ];

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
              }),
          SmartSelect<String>.multiple(
              title: 'Ciudades de preferencia',
              value: _preferencias.ciudades,
              choiceItems: ciudades1,
              onChange: (state) {
                setState(
                  () {
                    value1 = state.value;
                    _preferencias.ciudades = value1;
                    _preferencias.commit();
                  },
                );
              })

          /* SmartSelect<String>.multiple(
              title: 'Frameworks',
              value: value,
              choiceItems: options,
              onChange: (state) => setState(() => value = state.value)) */
          /* ,
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
      ),
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
