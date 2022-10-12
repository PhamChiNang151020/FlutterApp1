// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:shared_preferences/shared_preferences.dart';

import '../domains/user.dart';

class UserPreferences {
  Future<bool> saveUser(User user) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString("accessToken", user.accessToken);
    prefs.setString("username", user.userName);
    prefs.setString("as:system_id", user.asSystemId);
    prefs.setString("as:employee_id", user.asEmployeeId);

    return prefs.commit();
  }
}
