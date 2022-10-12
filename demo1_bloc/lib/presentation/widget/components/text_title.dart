import 'package:flutter/material.dart';

import '../../common/colors.dart';


class TextTitle extends StatelessWidget {
  const TextTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: defaultColor,
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
