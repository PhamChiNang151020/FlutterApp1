import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/presentation/widget/components/height_spacer.dart';

import '../../../common/colors.dart';

class Top extends StatelessWidget {
  const Top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/layout_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05)),
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/avt.png"),
              backgroundColor: defaultColor,
              maxRadius: 50,
            ),
            HeightSpacer(height: 0.02),
            Text(
              "Feet Management and Booking".tr(),
              style: const TextStyle(
                color: defaultColor,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            HeightSpacer(height: 0.02),
            Text(
              "Driver Name",
              // globalDriver.getFullName.toString(),
              style: const TextStyle(
                color: textDrawerColor,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            HeightSpacer(height: 0.02),
          ],
        ),
      ),
    );
  }
}
