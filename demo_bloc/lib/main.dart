import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo_bloc/login_view.dart';
import 'package:demo_bloc/repo/auth_repo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RepositoryProvider(
        create: (context) => AuthRepository(),
        child: Scaffold(
          appBar: AppBar(),
          body: const LoginView(),
        ),
      ),
    );
  }
}
