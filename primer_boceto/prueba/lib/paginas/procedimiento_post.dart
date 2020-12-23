import 'package:flutter/material.dart';

class ProcedimientoPost extends StatefulWidget {
  @override
  _ProcedimientoPost createState() => _ProcedimientoPost();
}

class _ProcedimientoPost extends State<ProcedimientoPost> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/fondo.jpg"), fit: BoxFit.fill)),
    child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(008, 024, 066, 1),
        title: Text('Después de un sismo', style: TextStyle(fontFamily: 'Paper',fontSize: 30)),
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
                      "Reúne a tu equipo de trabajo y permanezcan en un lugar seguro", style: TextStyle(fontFamily: 'Daisy',fontSize: 17),),
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
                      "Verifica posibles daños a tus compañeros y al edificio en que trabajas", style: TextStyle(fontFamily: 'Daisy',fontSize: 17),),
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
                      "Coloca en el suelo los artefactos peligrosos para evitar que se caigan con posibles réplicas", style: TextStyle(fontFamily: 'Daisy',fontSize: 17),),
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
                  title: Text("Enciende una radio para estar informado", style: TextStyle(fontFamily: 'Daisy',fontSize: 17),),
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
                  title: Text("No desesperes si no puedes realizar llamadas", style: TextStyle(fontFamily: 'Daisy',fontSize: 17),),
                  leading: Icon(Icons.admin_panel_settings_outlined, color: Colors.black),
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
    ));
  }
}
