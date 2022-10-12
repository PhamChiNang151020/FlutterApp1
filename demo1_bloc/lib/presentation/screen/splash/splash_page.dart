import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/presentation/common/colors.dart';
import 'package:flutter_login/presentation/screen/login/login_page.dart';
import 'package:page_transition/page_transition.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SplashPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(child: CircularProgressIndicator()),
      body: AnimatedSplashScreen(
        backgroundColor: defaultColor,
        splash: "assets/images/splash_logo.png",
        nextScreen: LoginPage(),
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.leftToRightJoined,
        // animationDuration: Duration(seconds: 1),
      ),
    );
  }
}
