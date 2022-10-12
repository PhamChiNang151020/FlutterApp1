// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
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
      body: Form(
          key: _formKey,
          child: Column(
            children: [
              _inputUserName(),
              _inputPassword(),
              _loginButton(),
            ],
          )),
    );
  }

  Widget _inputUserName() {
    return TextFormField(
      controller: _usernameController,
      decoration: const InputDecoration(
        hintText: "Tên người dùng",
      ),
      validator: (value) => null,
    );
  }

  Widget _inputPassword() {
    return TextFormField(
      controller: _passwordController,
      decoration: const InputDecoration(
        hintText: "Mật khẩu",
      ),
      validator: (value) => null,
    );
  }

  Widget _loginButton() {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          print("Tên: ${_usernameController.text}");
          print("pass: ${_passwordController.text}");
        } else {
          print("faile");
          clearText();
        }
      },
      child: const Text("Đăng nhập"),
    );
  }

  void clearText() {
    _usernameController.clear();
    _passwordController.clear();
  }
}
