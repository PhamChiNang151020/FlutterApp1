import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/business_logic/bloc/login/login_bloc.dart';

import '../../../common/colors.dart';
import '../../../common/error.dart';
import 'style_hint.dart';
import 'style_label.dart';

class PasswordInput extends StatefulWidget {
  @override
  State<PasswordInput> createState() => PasswordInputState();
}

class PasswordInputState extends State<PasswordInput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextFormField(
          key: const Key('loginFormPasswordInput_textField'),
          onChanged: (password) =>
              context.read<LoginBloc>().add(LoginPasswordChanged(password)),
          obscureText: _obscureText,
          decoration: InputDecoration(
              labelText: "passWord".tr(),
              hintText: "Enter your password".tr(),
              labelStyle: styleLabel(),
              hintStyle: styleHint(),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              errorText: state.password.invalid ? erNullPassword : null,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: Icon(
                  _obscureText ? Icons.lock : Icons.lock_open,
                  color: defaultColor,
                ),
                color: defaultColor,
              )),
        );
      },
    );
  }
}
