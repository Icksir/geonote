import 'package:flutter/material.dart';

class ProcedimientoPost extends StatefulWidget {
  @override
  _ProcedimientoPost createState() => _ProcedimientoPost();
}

class _ProcedimientoPost extends State<ProcedimientoPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(008, 024, 066, 1),
        title: Text('Despues de un sismo'),
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
                      "Reúne a tu equipo de trabajo y permanezcan en un lugar seguro"),
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
                      "Verifica posibles daños a tus compañeros y al edificio en que trabajas"),
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
                      "Coloca en el suelo los artefactos peligrosos para evitar que se caigan con posibles réplicas"),
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
                  title: Text("Enciende una radio para estar informado"),
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
                  title: Text("No desesperes si no puedes realizar llamadas"),
                  leading: Icon(Icons.fireplace_outlined, color: Colors.black),
                )),
          ),
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
