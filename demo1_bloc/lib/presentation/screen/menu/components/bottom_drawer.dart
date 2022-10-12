import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../common/colors.dart';

class Bottom extends StatelessWidget {
  const Bottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text(
        "${"All right reserved 2022 - MP Logistics".tr()}",
        style: const TextStyle(
          fontStyle: FontStyle.italic,
          color: defaultColor,
        ),
      ),
    );
  }
}
