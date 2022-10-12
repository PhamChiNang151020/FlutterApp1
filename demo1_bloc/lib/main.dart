import 'package:authentication_repository/authentication_repository.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_login/app.dart';
import 'package:user_repository/user_repository.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // await EasyLocalization.ensureInitialized();
  // // await Permission.camera.request();
  // // await Permission.microphone.request();
  // // Permission.locationAlways.request;
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('vi'),
      ],
      fallbackLocale: const Locale('en'),
      startLocale: const Locale('en'),
      path: "assets/lang",
      child: App(
        authenticationRepository: AuthenticationRepository(),
        userRepository: UserRepository(),
      ),
    ),
  );
}
