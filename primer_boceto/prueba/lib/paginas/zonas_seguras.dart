import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ZonasSeguras extends StatefulWidget {
  @override
  _ZonasSegurasState createState() => _ZonasSegurasState();
}

class _ZonasSegurasState extends State<ZonasSeguras> {
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'No se pudo abrir el mapa';
    }
  }

  List url = [
    [
      'Valparaíso',
      'https://www.google.com/maps/d/u/0/viewer?ll=-33.03050401689863%2C-71.54239768490059&z=14&mid=1fc0QO55QX04G8xrH1c0bVnmfRRc'
    ],
    [
      'Arica',
      'https://www.google.com/maps/d/u/0/viewer?mid=1Wz60vyaD6aHFY9k3c-czKBNGniY&ll=-18.434869155689285%2C-70.31183949999996&z=12'
    ],
    [
      'Pichilemu',
      'https://www.google.com/maps/d/u/0/viewer?mid=1q_ZW_Gd3QGSzZzA9ZkDlITHI8Kg&ll=-34.40689599049806%2C-72.00991550000003&z=12'
    ],
    [
      'Pelluhue y Curanipe',
      'https://www.google.com/maps/d/u/0/viewer?ll=-35.817004220820984%2C-72.60113250000002&z=13&mid=12GOj18gUlkPwKDbeMJhC6z1BnGBvGR-J'
    ],
    [
      'Ancud',
      'https://www.google.com/maps/d/u/0/viewer?mid=1um5_JQ8Cf6FcwtunYNTtpe3-MS4&ll=-41.8358318703823%2C-73.85613400000001&z=12'
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(008, 024, 066, 1),
        title: Text('Zonas de Inundación'),
      ),
      backgroundColor: Color.fromRGBO(033, 069, 128, 1),
      body: ListView.builder(
        itemCount: url.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _launchInBrowser(url[index][1]);
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 5.0),
              child: SizedBox(
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
                  color: Color.fromRGBO(083, 131, 178, 1),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          child: Text(
                            "Zona de Inundación de ${url[index][0]}",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          padding:
                              const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
