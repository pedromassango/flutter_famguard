import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {

  Future<bool> isLoggedIn() async {
    SharedPreferences instance = await SharedPreferences.getInstance();
    return instance.getBool('logged_in');
  }

  void setLoggedIn(bool state) async {
    SharedPreferences instance = await SharedPreferences.getInstance();
    instance.setBool('logged_in', state);
  }
}
