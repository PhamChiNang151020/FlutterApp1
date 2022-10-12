import 'dart:convert';

import 'package:fmbp_repo/data/server/server_name.dart';
import 'package:http/http.dart' as http;

Future<http.Response> httpPostEncoded(String url, dynamic body) async {
  var address = ServerDEV.SSO;

  http.Response result;
  try {
    result = await http
        .post(Uri.parse(address + url),
            body: body,
            headers: {
              "Accept": "application/json",
              "Content-Type": "application/x-www-form-urlencoded"
            },
            encoding: Encoding.getByName("utf-8"))
        .timeout(const Duration(seconds: 5));
  } catch (e) {
    result = await http
        .post(Uri.parse(address + url),
            body: body,
            headers: {
              "Accept": "application/json",
              "Content-Type": "application/x-www-form-urlencoded"
            },
            encoding: Encoding.getByName("utf-8"))
        .timeout(const Duration(seconds: 5));
  }
  return result;
}

// Future<http.Response> httpPostSSO(String url, dynamic body) async {
//   var address = ServerDEV.SSO;
//   var token = globalUser.getToken;
//   http.Response result;
//   try {
//     result = await http.post(Uri.parse(address + url),
//         body: jsonEncode(body),
//         headers: {
//           "Content-Type": 'application/json',
//           "Authorization": 'Bearer $token'
//         }).timeout(const Duration(seconds: 10));
//   } catch (e) {
//     result = await http.post(Uri.parse(address + url),
//         body: jsonEncode(body),
//         headers: {
//           "Content-Type": 'application/json',
//           "Authorization": 'Bearer $token'
//         }).timeout(const Duration(seconds: 10));
//   }
//   return result;
// }
