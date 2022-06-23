import 'dart:convert';

import 'package:app1/model/menu/ModelAccess.dart';
import 'package:flutter/services.dart';

Future<List<ModelAccess>> DataAccess() async {
  final jsondataAccess =
      await rootBundle.loadString('assets/json/menu/access.json');

  final listAccess = json.decode(jsondataAccess) as List<dynamic>;

  return listAccess.map((e) => ModelAccess.fromJson(e)).toList();
}
