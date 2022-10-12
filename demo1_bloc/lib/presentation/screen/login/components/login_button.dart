import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/business_logic/bloc/login/login_bloc.dart';
import 'package:flutter_login/presentation/widget/loading_no_box.dart';
import 'package:formz/formz.dart';

import '../../../common/colors.dart';
import '../../../widget/default_button.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const LoadingNoBox(color: defaultColor)
            : DefaultButton(
                color: defaultColor,
                press: state.status.isValidated
                    ? () {
                        context.read<LoginBloc>().add(const LoginSubmitted());
                      }
                    : null,
                text: "login".tr(),
              );
      },
    );
  }
}
