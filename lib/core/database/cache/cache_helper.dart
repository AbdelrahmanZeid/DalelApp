import 'package:shared_preferences/shared_preferences.dart';

class CascheHelper {
  static late SharedPreferences sharedPreferences;
   init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  void saveBool({required String key, required bool value}) async {
    bool boolData = await sharedPreferences.setBool(key, value);
  }

  bool? getData({required String key}) {
    return sharedPreferences.getBool(key);
  }
}
