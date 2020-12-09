import 'package:flutter/material.dart';

class Sismos extends StatefulWidget {
  @override
  _SismosState createState() => _SismosState();
}

class _SismosState extends State<Sismos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Últimos Sismos'),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 1.0, horizontal: 5.0),
              child: Card(
                child: ListTile(
                    title: Text("k1000o rico", style: TextStyle(fontSize: 17))),
              ),
            );
          }),
    );
  }
}
