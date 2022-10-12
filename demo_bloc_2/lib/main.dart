import 'package:demo_bloc_2/data/repo/auth/auth_repo.dart';
import 'package:demo_bloc_2/logic/bloc/auth/auth_bloc.dart';
import 'package:demo_bloc_2/pressentation/screen/home/home.dart';
import 'package:demo_bloc_2/pressentation/screen/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const FMBP());
}

class FMBP extends StatelessWidget {
  const FMBP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(AuthInitial(), AuthRepo()),
          )
        ],
        child: MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (context) => const LoginPage(),
            '/home': (context) => const HomePage(),
          },
        ));
  }
}
