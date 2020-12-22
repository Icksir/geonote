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
        backgroundColor: Color.fromRGBO(008, 024, 066, 1),
        title: Text('Procedimiento previo'),
      ),
      backgroundColor: Color.fromRGBO(033, 069, 128, 1),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 80,
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
                child: ListTile(
                  title: Text(
                      "Revisa la estructura de entorno para verificar su solidez"),
                  leading: Icon(Icons.fireplace_outlined, color: Colors.black),
                )),
          ),
          SizedBox(
            height: 80,
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
                child: ListTile(
                  title: Text(
                      "Preocúpate de conocer las zonas de seguridad del edificio en el que te encuentras"),
                  leading: Icon(Icons.fireplace_outlined, color: Colors.black),
                )),
          ),
          SizedBox(
            height: 80,
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
                child: ListTile(
                  title: Text(
                      "Identifica el lugar del tablero eléctrico y de las llaves de paso de gas y de agua"),
                  leading: Icon(Icons.fireplace_outlined, color: Colors.black),
                )),
          ),
          SizedBox(
            height: 80,
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
                child: ListTile(
                  title: Text(
                      "Prepara un plan de acción con tu equipo de trabajo y asegúrate de que todos lo conozcan"),
                  leading: Icon(Icons.fireplace_outlined, color: Colors.black),
                )),
          ),
          SizedBox(
            height: 80,
            child: Card(
                color: Colors.white,
                child: ListTile(
                  title: Text(
                      "Ten siempre a mano una linterna, un extintor de incendios, un botiquín, radio portátil y alimentos no perecibles"),
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
                  leading: Icon(Icons.fireplace_outlined, color: Colors.black),
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
