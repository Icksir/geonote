import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:core';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:prueba/servicios/preferencias.dart';

class Home extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  FlutterLocalNotificationsPlugin fltrNotification;
  Preferencias _preferencias = Preferencias();
  /* Preferencias _preferencias = Preferencias(); */
  @override
  void initState() {
    super.initState();
    var androidInitialize = new AndroidInitializationSettings('ic_launcher2');
    var iOSinitialize = new IOSInitializationSettings();
    var initializationSettings = new InitializationSettings(
        android: androidInitialize, iOS: iOSinitialize);
    fltrNotification = new FlutterLocalNotificationsPlugin();
    fltrNotification.initialize(initializationSettings,
        onSelectNotification: notificationSelected);
    super.initState();
    _preferencias.init().then(
      (value) {
        setState(
          () {
            _preferencias = value;
          },
        );
      },
    );
  }

  Future _showNotification(String titulo, String cuerpo) async {
    var androidDetails = new AndroidNotificationDetails(
        "Channel ID", "Camilo", "Descrpición",
        importance: Importance.max);
    var iOSDetails = new IOSNotificationDetails();
    var generalNotificationDetails =
        new NotificationDetails(android: androidDetails, iOS: iOSDetails);
    if (_preferencias.automatico) {
      await fltrNotification.show(
          0, titulo, cuerpo, generalNotificationDetails);
    }
  }

  List data = [];
  String fecha = "No se pudo obtener la fecha";
  String ref = "No se pudo obtener la ubicación";
  String magnitud = "No se pudo obtener la magnitud";
  String lat = "-35.4333";
  String long = "-71.6667";

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    if (data != null) {
      if (data[0] != null) {
        fecha = data[0]["Fecha"];
        ref = data[0]["RefGeografica"];
        magnitud = data[0]["Magnitud"];
        lat = data[0]["Latitud"];
        long = data[0]["Longitud"];
      }
    }

    // ignore: missing_return
    String encontrarSismosConf() {
      for (int i = 0; i < data.length; i++) {
        List valpo = [-33.05, -71.6167];
        List vina = [-33, -71.5167];
        List talca = [-35.4333, -71.6667];
        List stgo = [-33.4372, -70.6506];
        List mina = [-31.9778000, -71.3040700];

        var latS = double.parse(data[i]["Latitud"]);
        var longS = double.parse(data[i]["Longitud"]);
        Map lugares = {
          "Viña del mar": vina,
          "Valparaiso": valpo,
          "Talca": talca,
          "Santiago": stgo,
          "Los Vilos": mina
        };
        for (int j = 0; j < _preferencias.ciudades.length; j++) {
          var latitud = lugares[_preferencias.ciudades[j]][0];
          var longitud = lugares[_preferencias.ciudades[j]][1];
          var dist = sqrt((latitud - latS) * (latitud - latS) +
              (longitud - longS) * (longitud - longS));
          print(dist);

          if (0.8724622 >= dist) {
            _showNotification("Aviso de Sismo",
                "Sismo de magnitud ${data[i]["Magnitud"]} en ${_preferencias.ciudades[j]}");
            return "s";
          }
        }
      }
      return "s";
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/fondo.jpg"), fit: BoxFit.fill)),
      child: Scaffold(
        //backgroundColor: Color.fromRGBO(008, 024, 066, 1),
        backgroundColor: Colors.transparent,
        key: widget._scaffoldKey,
        drawer: new Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 140,
                child: DrawerHeader(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '• Menú •',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Boxes',
                          fontSize: 90,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(083, 131, 178, 1),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: FlatButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/consejos');
                      },
                      icon: Icon(Icons.lightbulb_outline),
                      label: Text(
                        "Procedimientos y \nRecomendaciones",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    child: FlatButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, "/config");
                      },
                      icon: Icon(Icons.settings_outlined),
                      label: Text(
                        "Configuraciones",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    child: FlatButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, "/zonas_seguras");
                      },
                      icon: Icon(Icons.do_disturb_on_outlined),
                      label: Text(
                        "Zonas de Inundación",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Image(
                  image: AssetImage('assets/images/titulo_home.png'),
                  width: 300,
                  height: 150,
                ),
              ),

              Expanded(
                flex: 4,
                child: Container(
                  margin: EdgeInsets.fromLTRB(30.0, 0, 30.0, 30.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color.fromRGBO(083, 131, 178, 1),
                    border: Border.all(
                      width: 3.0,
                      color: Colors.white,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 70.0, horizontal: 25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            "ÚLTIMO SISMO",
                            style: TextStyle(
                              fontFamily: 'Paper',
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            fecha,
                            style: TextStyle(
                              fontFamily: 'Daisy',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            ref,
                            style: TextStyle(
                              fontFamily: 'Daisy',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            magnitud,
                            style: TextStyle(
                              fontFamily: 'Daisy',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(),
                        ),
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FlatButton.icon(
                                onPressed: () {
                                  encontrarSismosConf();
                                },
                                label: Text(
                                  'Notificación',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Daisy',
                                    color: Colors.white,
                                  ),
                                ),
                                color: Color.fromRGBO(033, 069, 128, 0.8),
                                icon: Icon(
                                  Icons.info_outline,
                                  color: Colors.white,
                                ),
                              ),
                              FlatButton.icon(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/mapa',
                                    arguments: {
                                      'latitud': lat,
                                      'longitud': long
                                    },
                                  );
                                },
                                color: Color.fromRGBO(033, 069, 128, 0.8),
                                icon: Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.white,
                                ),
                                label: Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Text(
                                    'Mapa',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Daisy',
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // ULTIMOS SISMOS
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 20.0, 50.0),
                      child: FloatingActionButton(
                        onPressed: () =>
                            widget._scaffoldKey.currentState.openDrawer(),
                        child: Icon(Icons.dehaze),
                        backgroundColor: Color.fromRGBO(083, 131, 178, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 30.0, 15.0),
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
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                      color: Color.fromRGBO(083, 131, 178, 1),
                      child: FlatButton.icon(
                        onPressed: () {
                          if (data != null) {
                            Navigator.pushNamed(context, '/ultSismos',
                                arguments: [
                                  data[1],
                                  data[2],
                                  data[3],
                                  data[4],
                                  data[5]
                                ]);
                          } else {
                            Navigator.pushNamed(context, '/ultSismos');
                          }
                        },
                        icon: Icon(
                          Icons.announcement_rounded,
                          color: Colors.white,
                        ),
                        label: Padding(
                          padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                          child: Text(
                            'Últimos Sismos',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Paper'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future notificationSelected(String payload) async {}
}
