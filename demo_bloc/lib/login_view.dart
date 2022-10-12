import 'package:demo_bloc/auth/bloc/login_bloc.dart';
import 'package:demo_bloc/repo/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginBloc(authRepo),
        child: _form(),
      ),
    );
  }

  Widget _form() {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            _userName(),
            _password(),
            _loginButton(),
          ],
        ));
  }

  Widget _userName() {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.person),
        hintText: "User Name",
      ),
      validator: (value) => null,
    );
  }

  Widget _password() {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.person),
        hintText: "password",
      ),
      validator: (value) => null,
    );
  }

  Widget _loginButton() {
    return TextButton(onPressed: () {}, child: const Text("Login"));
  }
}
