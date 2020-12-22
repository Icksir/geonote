import 'package:flutter/material.dart';

class Recomendaciones extends StatefulWidget {
  @override
  _Recomendaciones createState() => _Recomendaciones();
}

class _Recomendaciones extends State<Recomendaciones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(008, 024, 066, 1),
        title: Text('Recomendaciones'),
      ),
      backgroundColor: Color.fromRGBO(033, 069, 128, 1),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 80,
            child: Card(
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
                  title: Text("Consejo 1"),
                  leading: Icon(Icons.fireplace_outlined, color: Colors.white),
                )),
          ),
          SizedBox(
            height: 80,
            child: Card(
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
                  title: Text("Consejo 2"),
                  leading: Icon(Icons.fireplace_outlined, color: Colors.white),
                )),
          ),
          SizedBox(
            height: 80,
            child: Card(
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
                  title: Text("Consejo 3"),
                  leading: Icon(Icons.fireplace_outlined, color: Colors.white),
                )),
          ),
          SizedBox(
            height: 80,
            child: Card(
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
                  title: Text("Consejo 4"),
                  leading: Icon(Icons.fireplace_outlined, color: Colors.white),
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
