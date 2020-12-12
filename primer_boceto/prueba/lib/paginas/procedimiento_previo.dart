import 'package:flutter/material.dart';
import 'dart:core';

class ProcedimientoPrevio extends StatefulWidget {
  @override
  _ProcedimientoPrevio createState() => _ProcedimientoPrevio();
}

class _ProcedimientoPrevio extends State<ProcedimientoPrevio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Procedimiento previo'),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 80,
            child: Card(
                child: ListTile(
              title: Text(
                  "Revisa la estructura de entorno para verificar su solidez"),
              leading: Icon(Icons.fireplace_outlined),
            )),
          ),
          SizedBox(
            height: 80,
            child: Card(
                child: ListTile(
              title: Text(
                  "Preocúpate de conocer las zonas de seguridad del edificio en el que te encuentras"),
              leading: Icon(Icons.fireplace_outlined),
            )),
          ),
          SizedBox(
            height: 80,
            child: Card(
                child: ListTile(
              title: Text(
                  "Identifica el lugar del tablero eléctrico y de las llaves de paso de gas y de agua"),
              leading: Icon(Icons.fireplace_outlined),
            )),
          ),
          SizedBox(
            height: 80,
            child: Card(
                child: ListTile(
              title: Text(
                  "Prepara un plan de acción con tu equipo de trabajo y asegúrate de que todos lo conozcan"),
              leading: Icon(Icons.fireplace_outlined),
            )),
          ),
          SizedBox(
            height: 80,
            child: Card(
                child: ListTile(
              title: Text(
                  "Ten siempre a mano una linterna, un extintor de incendios, un botiquín, radio portátil y alimentos no perecibles"),
              leading: Icon(Icons.fireplace_outlined),
            )),
          )
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
