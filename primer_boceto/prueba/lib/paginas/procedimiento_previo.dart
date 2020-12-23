import 'package:flutter/material.dart';
import 'dart:core';

class ProcedimientoPrevio extends StatefulWidget {
  @override
  _ProcedimientoPrevio createState() => _ProcedimientoPrevio();
}

class _ProcedimientoPrevio extends State<ProcedimientoPrevio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/fondo.jpg"), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(008, 024, 066, 1),

          title: Text('Procedimiento previo', style: TextStyle(fontFamily: 'Paper',fontSize: 30)),
        ),
        backgroundColor: Colors.transparent,
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
                        "Revisa la estructura de entorno para verificar su solidez", style: TextStyle(fontFamily: 'Daisy',fontSize: 17),),
                    leading: Icon(Icons.admin_panel_settings_outlined, color: Colors.black),
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
                        "Preocúpate de conocer las zonas de seguridad del edificio en el que te encuentras", style: TextStyle(fontFamily: 'Daisy',fontSize: 17),),
                    leading: Icon(Icons.admin_panel_settings_outlined, color: Colors.black),
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
                        "Identifica el lugar del tablero eléctrico y de las llaves de paso de gas y de agua", style: TextStyle(fontFamily: 'Daisy',fontSize: 17),),
                    leading: Icon(Icons.admin_panel_settings_outlined, color: Colors.black),
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
                        "Prepara un plan de acción con tu equipo de trabajo y asegúrate de que todos lo conozcan", style: TextStyle(fontFamily: 'Daisy',fontSize: 17),),
                    leading: Icon(Icons.admin_panel_settings_outlined, color: Colors.black),
                  )),
            ),
            SizedBox(
              height: 80,
              child: Card(
                  color: Colors.white,
                  child: ListTile(
                    title: Text(
                        "Ten siempre a mano una linterna, un extintor de incendios, un botiquín, radio portátil y alimentos no perecibles", style: TextStyle(fontFamily: 'Daisy',fontSize: 17),),
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
                    leading: Icon(Icons.admin_panel_settings_outlined, color: Colors.black),
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
      ),
    );
  }
}
