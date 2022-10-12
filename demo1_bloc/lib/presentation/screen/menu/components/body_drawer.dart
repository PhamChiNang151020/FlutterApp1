import 'package:flutter/material.dart';
import 'package:flutter_login/presentation/screen/menu/components/btn_logout.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          LogoutButton(),
        ],
      ),
    );
  }
}
