import 'package:http/http.dart';
import 'dart:convert';
import 'dart:async';

class GaelApi {
  Map sismo1, sismo2, sismo3, sismo4, sismo5, sismo6;

  // Esto se supone q serán las entradas de la función, donde supongo que es
  // latitud y longitud para calcular cierta distancia a alguna comuna
  //GaelApi({ this.latitud, this.longitud});

  Future<void> getDatos() async {
    try {
      // obtiene datos
      Response response =
          await get("https://api.gael.cl/general/public/sismos");
      List<dynamic> data = jsonDecode(response.body);

      // data se entrega tal como
      /* [{Fecha: 2020/12/08 14:02:44, Latitud: -31.672, Longitud: -71.636, 
      Profundidad: 34.6, Magnitud: 3.1 Ml, Agencia: GUC, 
      RefGeografica: 29 km al NO de Los Vilos, FechaUpdate: 08/12/2020 17:40:00}, 
      {Fecha: 2020/12/08 13:43:38, Latitud: -28.250, Longitud: -71.306, 
      Profundidad: 33.7, Magnitud: 4.2 Ml, Agencia: GUC, 
      RefGeografica: 25 km al N de Huasco, FechaUpdate: 08/12/2020 17:40:00}, ...
      */

      sismo1 = data[0];
      sismo2 = data[1];
      sismo3 = data[2];
      sismo4 = data[3];
      sismo5 = data[4];
      sismo6 = data[5];
    } catch (e) {
      print(e);
    }
  }
}
