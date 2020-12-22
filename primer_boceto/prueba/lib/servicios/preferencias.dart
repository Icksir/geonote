import 'package:shared_preferences/shared_preferences.dart';

class Preferencias {
  static const AUTOMATICO = "automatico";
  static const CIUDADES = "ciudades";
  //
  /* static const SANTIAGO = "santiago";
  static const VINA = "vina";
  static const VALPARAISO = "valparaiso";
  static const TALCA = "talca"; */

  static final Preferencias instance = Preferencias._internal();
  //
  /* static final Preferencias instance1 = Preferencias._internal();
  static final Preferencias instance1 = Preferencias._internal();
  static final Preferencias instance1 = Preferencias._internal();
  static final Preferencias instance1 = Preferencias._internal();   */
  //
  SharedPreferences _sharedPreferences;
  //campos
  List ciudades = [];

  bool automatico = false;
/*   bool santiago = false;
  bool vina = false;
  bool valparaiso = false;
  bool talca = false; */

  Preferencias._internal();

  factory Preferencias() => instance;

  Future<SharedPreferences> get preferences async {
    if (_sharedPreferences != null) {
      return _sharedPreferences;
    } else {
      _sharedPreferences = await SharedPreferences.getInstance();
      automatico = _sharedPreferences.getBool(AUTOMATICO);
      ciudades = _sharedPreferences.getStringList(CIUDADES);
      /* santiago = _sharedPreferences.getBool(SANTIAGO);
      vina = _sharedPreferences.getBool(VINA);
      valparaiso = _sharedPreferences.getBool(VALPARAISO);
      talca = _sharedPreferences.getBool(TALCA); */
      if (automatico == null) {
        automatico = false;
        /* santiago = false;
        vina = false;
        valparaiso = false;
        talca = false; */
      }
      if (ciudades == null) {
        ciudades = [];
      }
      return _sharedPreferences;
    }
  }

/*   Future<SharedPreferences> get ciudades async {
    if (_sharedPreferences != null) {
      return _sharedPreferences;
    } else {
      _sharedPreferences = await SharedPreferences.getInstance();
      automatico = _sharedPreferences.getBool(AUTOMATICO);
      if (automatico == null) {
        automatico = false;
      }
      return _sharedPreferences;
    }
  } */
//guardar
  Future<bool> commit() async {
    _sharedPreferences.setBool(AUTOMATICO, automatico);
    _sharedPreferences.setStringList(CIUDADES, ciudades);
    /* _sharedPreferences.setBool(SANTIAGO, santiago);
    _sharedPreferences.setBool(VINA, vina);
    _sharedPreferences.setBool(VALPARAISO, valparaiso);
    _sharedPreferences.setBool(TALCA, talca); */
  }

//leer
  Future<Preferencias> init() async {
    _sharedPreferences = await preferences;
    return this;
  }
}
