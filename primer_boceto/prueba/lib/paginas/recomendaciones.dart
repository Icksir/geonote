import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Recomendaciones extends StatefulWidget {
  @override
  _Recomendaciones createState() => _Recomendaciones();
}

class _Recomendaciones extends State<Recomendaciones> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/fondo.jpg"), fit: BoxFit.fill)),
    child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(008, 024, 066, 1),
        title: Text('Recomendaciones', style: TextStyle(fontFamily: 'Paper',fontSize: 30),),
      ),
    backgroundColor: Colors.transparent,
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 100,
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
                  title: Text("Actuar con calma tiene un efecto tranquilizador sobre las personas afectadas. La calma es casi tan contagiosa como el nerviosismo.", style: TextStyle(fontFamily: 'Daisy',fontSize: 17),),
                  leading: Icon(Icons.lightbulb_outline_rounded, color: Colors.black),
                )),
          ),
          SizedBox(
            height: 100,
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
                  title: Text("Estimula y favorece que las personas afectadas se incorporen a las tareas de ayuda mutua entre sí, tan pronto como sea posible.", style: TextStyle(fontFamily: 'Daisy',fontSize: 17),),
                  leading: Icon(Icons.lightbulb_outline_rounded, color: Colors.black),
                )),
          ),
          SizedBox(
            height: 100,
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
                  title: Text("La persona que está en estado de choque o conmoción debe ser alejada del ambiente traumático. Hay que hacerle sentir que está acompañada.", style: TextStyle(fontFamily: 'Daisy',fontSize: 17),),
                  leading: Icon(Icons.lightbulb_outline_rounded, color: Colors.black),
                )),
          ),
          SizedBox(
            height: 100,
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
                  title: Text("Evita los relatos con detalles horripilantes, pero tampoco tratar de minimizar lo sucedido como “si aquí no hubiera pasado nada”.", style: TextStyle(fontFamily: 'Daisy',fontSize: 17),),
                  leading: Icon(Icons.lightbulb_outline_rounded, color: Colors.black),
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
