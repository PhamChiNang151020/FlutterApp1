// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../common/colors.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
    required this.color,
  }) : super(key: key);

  final String? text;
  final Function? press;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.width * 0.01),
      child: SizedBox(
        width: double.infinity,
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: color,
          onPressed: press as void Function()?,
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.width * 0.02),
            child: Text(
              text!,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
