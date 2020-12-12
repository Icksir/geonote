import 'package:flutter/material.dart';

class ProcedimientoDurante extends StatefulWidget {
  @override
  _ProcedimientoDurante createState() => _ProcedimientoDurante();
}

class _ProcedimientoDurante extends State<ProcedimientoDurante> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Durante un sismo'),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 80,
            child: Card(
                child: ListTile(
              title: Text(
                  "Mantén la calma y preocúpate especialmente de personas mayores o enfermas"),
              leading: Icon(Icons.fireplace_outlined),
            )),
          ),
          SizedBox(
            height: 80,
            child: Card(
                child: ListTile(
              title: Text(
                  "Sitúate en un lugar alejado de muebles altos y pesados"),
              leading: Icon(Icons.fireplace_outlined),
            )),
          ),
          SizedBox(
            height: 80,
            child: Card(
                child: ListTile(
              title: Text(
                  "En lo posible, no escapes al exterior ya que podrían caer tejas, postes y otros"),
              leading: Icon(Icons.fireplace_outlined),
            )),
          ),
          SizedBox(
            height: 80,
            child: Card(
                child: ListTile(
              title: Text(
                  "Usa sólo las escaleras para evacuar el edificio, nunca los ascensores"),
              leading: Icon(Icons.fireplace_outlined),
            )),
          ),
          SizedBox(
            height: 80,
            child: Card(
                child: ListTile(
              title: Text("En lo posible, no conduzcas"),
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
