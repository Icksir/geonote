import 'package:flutter/material.dart';

class ProcedimientoDurante extends StatefulWidget {
  @override
  _ProcedimientoDurante createState() => _ProcedimientoDurante();
}

class _ProcedimientoDurante extends State<ProcedimientoDurante> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/fondo.jpg"), fit: BoxFit.fill)),
    child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(008, 024, 066, 1),
        title: Text('Durante un sismo', style: TextStyle(fontFamily: 'Paper',fontSize: 30)),
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
                      "Mantén la calma y preocúpate especialmente de personas mayores o enfermas", style: TextStyle(fontFamily: 'Daisy',fontSize: 17),),
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
                      "Sitúate en un lugar alejado de muebles altos y pesados", style: TextStyle(fontFamily: 'Daisy',fontSize: 17),),
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
                      "En lo posible, no escapes al exterior ya que podrían caer tejas, postes y otros", style: TextStyle(fontFamily: 'Daisy',fontSize: 17),),
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
                      "Usa sólo las escaleras para evacuar el edificio, nunca los ascensores", style: TextStyle(fontFamily: 'Daisy',fontSize: 17),),
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
                  title: Text("En lo posible, no conduzcas", style: TextStyle(fontFamily: 'Daisy',fontSize: 17),),
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
    ));
  }
}
