import 'dart:convert';

import 'package:flutter_login/data/Server/contant_servers.dart';
import 'package:formz/formz.dart';
import 'package:http/http.dart' as http;

//Khai báo sử dụng server nào

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
