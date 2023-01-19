import 'package:shared_preferences/shared_preferences.dart';

class SharedServices {
  final keyEmail = 'email';

  Future<String?> getEmail() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString(keyEmail);
  }

  Future<bool> saveEmail(String email) async {
    final pref = await SharedPreferences.getInstance();
    return pref.setString(keyEmail, email);
  }

  Future<bool> deleteEmail() async {
    final pref = await SharedPreferences.getInstance();
    return pref.remove(keyEmail);
  }
}