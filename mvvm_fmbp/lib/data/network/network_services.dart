// ignore_for_file: avoid_print

import 'package:mvvm_fmbp/data/network/api/url.dart';
import 'package:mvvm_fmbp/data/network/common_services.dart';
import 'package:http/http.dart' as http;

class NetworkServices extends CommonServices {
  @override
  Future getToken(String url, dynamic body) async {
    try {
      final response = await http.post(
        Uri.parse(UrlAPI.token),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/x-www-form-urlencoded"
        },
        body: body,
      );
      if (response.statusCode == 200) {
        print("DONE");
      } else {
        print("FAIL");
      }
    } catch (e) {}
  }
}
