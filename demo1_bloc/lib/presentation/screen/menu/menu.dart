import 'package:flutter/material.dart';
import 'package:flutter_login/presentation/common/colors.dart';
import 'components/bottom_drawer.dart';
import 'components/top_drawer.dart';
import 'components/body_drawer.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: bgDrawerColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Top(),
            ),
            Expanded(
              flex: 3,
              child: Body(),
            ),
            Expanded(
              flex: -1,
              child: Bottom(),
            ),
          ],
        ));
  }
}
