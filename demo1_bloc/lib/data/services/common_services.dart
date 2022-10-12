import 'package:flutter_login/business_logic/api/url.dart';
import 'package:flutter_login/business_logic/https/https.dart';
import 'package:flutter_login/data/dtos/data_login.dart';
import 'package:http/http.dart';

// Future<Response> getToken(DataLogin dataLogin) {
//   return httpPost(UrlAPI.token, dataLogin.toJson());

Future<Response> getToken(DataLogin datalogin) {
  return httpPostEncoded(UrlAPI.token.toString(), datalogin.toJson());
}
