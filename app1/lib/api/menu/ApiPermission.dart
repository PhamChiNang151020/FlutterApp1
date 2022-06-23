import 'dart:convert';

import 'package:app1/model/menu/ModelPermission.dart';
import 'package:flutter/services.dart';

Future<List<ModelPermission>> DataPermission() async {
  final jsondataPermission =
      await rootBundle.loadString('assets/json/menu/permission.json');

  final listPermission = json.decode(jsondataPermission) as List<dynamic>;

  return listPermission.map((e) => ModelPermission.fromJson(e)).toList();
}
