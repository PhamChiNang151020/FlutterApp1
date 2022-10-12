import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/presentation/widget/icon_custom.dart';

import '../common/colors.dart';

class AreYouSure extends StatelessWidget {
  const AreYouSure({
    Key? key,
    required this.text,
    required this.pressOK,
    required this.pressCanel,
  }) : super(key: key);

  final String text;
  final Function pressCanel;
  final Function pressOK;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          const Positioned(
            top: -30,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.red,
              child: IconCustom(iConURL: "assets/icon/sure.png", size: 50),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height -
                (MediaQuery.of(context).size.width * 1.1),
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1),
              child: Column(
                children: [
                  Expanded(
                    child: Text(
                      text.tr(),
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: -1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: pressCanel as void Function()?,
                            child: Text(
                              "cancel".tr().toUpperCase(),
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.02,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.1),
                        TextButton(
                          onPressed: pressOK as void Function()?,
                          child: Text(
                            "ok".tr().toUpperCase(),
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02,
                              color: defaultColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
          // SizedBox(
          //   width: MediaQuery.of(context).size.width * 0.7,
          //   height: MediaQuery.of(context).size.height -
          //       (MediaQuery.of(context).size.width * 1.1),
          //   child: Center(
          //     child: Row(

          //       children: [
          //         TextButton(onPressed: () {}, child: Text("Cancel")),
          //         TextButton(onPressed: () {}, child: Text("Oke")),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
