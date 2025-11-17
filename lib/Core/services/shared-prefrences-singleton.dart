import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesSingleton {
  static late SharedPreferences _sharedPreferences;

  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static setBool(String key, bool value) async {
    return await _sharedPreferences.setBool(key, value);
  }

  static bool getBool(String key) {
    return _sharedPreferences.getBool(key) ?? false;
  }
}
