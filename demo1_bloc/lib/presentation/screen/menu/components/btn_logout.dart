import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/business_logic/bloc/authentication/authentication_bloc.dart';

import '../../../common/colors.dart';
import '../../../widget/icon_custom.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.02),
      child: Container(
        decoration: const BoxDecoration(
          color: itemDrawerColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: ListTile(
          onTap: () {
            context
                .read<AuthenticationBloc>()
                .add(AuthenticationLogoutRequested());
          },
          leading: const IconCustom(
            iConURL: "assets/icon/log_out.png",
            size: 25,
          ),
          trailing: const IconCustom(
            iConURL: "assets/icon/arrow_right.png",
            size: 20,
          ),
          title: Text(
            "Log out".tr(),
            style: const TextStyle(
              color: textDrawerColor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
