import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/business_logic/bloc/login/login_bloc.dart';
import 'package:flutter_login/presentation/widget/components/height_spacer.dart';

import 'package:formz/formz.dart';

import 'components/login_button.dart';
import 'components/password.dart';
import 'components/user_name.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          // ScaffoldMessenger(
          //     child: DialogError(
          //   widget: Text(":ÁChcAS"),
          // ));
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(content: Text('Authentication Failure')),
            );
        }
      },
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color.fromARGB(162, 245, 244, 242),
        ),
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.025),
          child: Column(
            children: [
              HeightSpacer(height: 0.02),
              UsernameInput(),
              HeightSpacer(height: 0.02),
              PasswordInput(),
              HeightSpacer(height: 0.02),
              LoginButton(),
            ],
          ),
        ),
      ),
    );
  }
}
