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
    );
  }
}
