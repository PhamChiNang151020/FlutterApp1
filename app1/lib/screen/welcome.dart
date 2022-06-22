import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeMyApp extends StatelessWidget {
  const WelcomeMyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset('assets/icon/splash_bg.svg'),
        ],
      ),
    );
  }
}
