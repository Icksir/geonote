import 'package:shared_preferences/shared_preferences.dart';

class Preferencias {
  static const AUTOMATICO = "automatico";

  static final Preferencias instance = Preferencias._internal();

  //campos
  SharedPreferences _sharedPreferences;
  bool automatico = false;

  Preferencias._internal();

  factory Preferencias() => instance;

  Future<SharedPreferences> get preferences async {
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
  }

//guardar
  Future<bool> commit() async {
    _sharedPreferences.setBool(AUTOMATICO, automatico);
  }

//leer
  Future<Preferencias> init() async {
    _sharedPreferences = await preferences;
    return this;
  }
}
