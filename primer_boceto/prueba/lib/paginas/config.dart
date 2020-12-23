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

  List<dynamic> value1 = [];
  List<S2Choice<String>> ciudades1 = [
    S2Choice<String>(value: "Santiago", title: 'Santiago'),
    S2Choice<String>(value: "Viña del mar", title: 'Viña del mar'),
    S2Choice<String>(value: "Valparaíso", title: 'Valparaíso'),
    S2Choice<String>(value: "Talca", title: 'Talca'),
    S2Choice<String>(value: "Mina Collahuasi", title: 'Mina Collahuasi'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(008, 024, 066, 1),
        title: Text('Configuración'),
      ),
      backgroundColor: Color.fromRGBO(083, 131, 178, 1),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              child: SwitchListTile(
                value: _preferencias.automatico,
                title: Text("¿Quieres recibir notificaciones de los sismos?",
                    style: TextStyle(fontSize: 17)),
                secondary: Icon(Icons.notification_important_outlined),
                controlAffinity: ListTileControlAffinity.platform,
                /* value: /* _checkBoxValue ,*/ */
                onChanged: (value) {
                  setState(
                    () {
                      _preferencias.automatico = value;
                      _preferencias.commit();
                    },
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              child: SmartSelect<String>.multiple(
                title: 'Ciudades a elección',
                placeholder: 'Ciudades',
                value: _preferencias.ciudades,
                choiceItems: ciudades1,
                onChange: (state) {
                  setState(
                    () {
                      value1 = state.value;
                      _preferencias.ciudades = value1;
                      _preferencias.commit();
                      print(_preferencias.ciudades);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _preferencias.init().then(
      (value) {
        setState(
          () {
            _preferencias = value;
          },
        );
      },
    );
  }
}
