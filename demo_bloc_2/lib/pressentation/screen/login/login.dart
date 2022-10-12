import 'package:demo_bloc_2/logic/bloc/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: const FormLogin(),
    );
  }
}

class FormLogin extends StatefulWidget {
  const FormLogin({
    Key? key,
  }) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  late AuthBloc authBloc;
  @override
  void initState() {
    authBloc;
    super.initState();
  }

  final msg = BlocBuilder<AuthBloc, AuthState>(
    builder: (context, state) {
      if (state is LoginErrorState) {
        return Text(state.error);
      } else if (state is LoginLoadingState) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return Container();
      }
    },
  );

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is LoginSuccessState) {
          Navigator.pushNamed(context, '/home');
        }
      },
      child: Form(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: userController,
              decoration: const InputDecoration(hintText: "user"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: passController,
              decoration: const InputDecoration(hintText: "password"),
            ),
            ElevatedButton(
                onPressed: () {
                  authBloc.add(LoginButtunPressed(
                      username: userController.text,
                      password: passController.text));
                },
                child: const Text("login"))
          ],
        ),
      )),
    );
  }
}
