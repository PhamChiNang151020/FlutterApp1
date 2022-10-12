import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/business_logic/bloc/login/login_bloc.dart';

import '../../../common/colors.dart';
import '../../../common/error.dart';
import 'style_hint.dart';
import 'style_label.dart';

class UsernameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.username != current.username,
      builder: (context, state) {
        return TextFormField(
          key: const Key('loginForm_usernameInput_textField'),
          onChanged: (username) =>
              context.read<LoginBloc>().add(LoginUsernameChanged(username)),
          decoration: InputDecoration(
            labelText: "userName".tr(),
            hintText: "Enter your user name".tr(),
            labelStyle: styleLabel(),
            hintStyle: styleHint(),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            errorText: state.username.invalid ? erNullUserName : null,
            suffixIcon: const Icon(
              Icons.person_outline,
              color: defaultColor,
            ),
          ),
        );
      },
    );
  }
}
