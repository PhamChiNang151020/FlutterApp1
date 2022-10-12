import 'package:flutter/material.dart';
import 'package:fmbp/presentations/widget/height_spacer.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "/login_screen";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _formLogin()),
    );
  }

  Widget _formLogin() {
    return Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _inputUserName(),
            const HeightSpacer(height: 0.02),
            _inputPassword(),
            const HeightSpacer(height: 0.02),
            _loginButton(),
          ],
        ));
  }

  Widget _inputUserName() {
    return TextFormField(
      controller: _usernameController,
      decoration: const InputDecoration(
        hintText: "User Name",
      ),
      validator: (value) => null,
    );
  }

  Widget _inputPassword() {
    return TextFormField(
      controller: _passwordController,
      decoration: const InputDecoration(
        hintText: "Password",
      ),
      validator: (value) => null,
    );
  }

  Widget _loginButton() {
    return TextButton(onPressed: () {}, child: const Text("Login"));
  }
}
