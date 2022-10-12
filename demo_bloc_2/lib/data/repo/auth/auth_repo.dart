import 'dart:convert';

import 'package:http/http.dart' as http;

class AuthRepo {
  login(String username, String password) async {
    var res =
        await http.post(Uri.parse("https://dev.igls.vn:9110/token"), headers: {
      "Accept": "application/json",
      "Content-Type": "application/x-www-form-urlencoded"
    }, body: {
      "username": "cuong.tran",
      "password": "123456789",
      "grant_type": "password",
      "client_id": "MB_ENT",
    });
    final data = jsonDecode(res.body);
    print(data);
  }
}
