import 'package:flutter/material.dart';

class Consejos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Consejos'),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 80,
            child: Card(
                child: ListTile(
              title: Text("Consejo 1"),
              leading: Icon(Icons.fireplace_outlined),
            )),
          ),
          SizedBox(
            height: 80,
            child: Card(
                child: ListTile(
              title: Text("Consejo 2"),
              leading: Icon(Icons.fireplace_outlined),
            )),
          ),
          SizedBox(
            height: 80,
            child: Card(
                child: ListTile(
              title: Text("Consejo 3"),
              leading: Icon(Icons.fireplace_outlined),
            )),
          ),
          SizedBox(
            height: 80,
            child: Card(
                child: ListTile(
              title: Text("Consejo 4"),
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
