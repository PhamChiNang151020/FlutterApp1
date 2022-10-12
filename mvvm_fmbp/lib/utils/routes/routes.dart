import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_fmbp/utils/routes/routes_name.dart';
import 'package:mvvm_fmbp/views/login/login_screen.dart';
import 'package:mvvm_fmbp/views/splash/splash_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen());

      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen());

      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
