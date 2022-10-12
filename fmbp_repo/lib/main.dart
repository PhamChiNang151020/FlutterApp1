import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fmbp_repo/presentations/routes/routes.dart';
import 'package:fmbp_repo/presentations/routes/routes_name.dart';

void main() {
  runApp(const FMBP());
}

class FMBP extends StatelessWidget {
  const FMBP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Scaffold(),
      initialRoute: RoutesName.splash,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
