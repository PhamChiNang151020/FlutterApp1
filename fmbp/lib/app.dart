import 'package:flutter/material.dart';
import 'package:fmbp/presentations/routes/route.dart';
import 'package:fmbp/presentations/screen/login/index.dart';

class FMBP extends StatelessWidget {
  const FMBP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.routeName,
      routes: routes,
    );
  }
}
