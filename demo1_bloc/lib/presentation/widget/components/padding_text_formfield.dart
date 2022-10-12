import 'package:flutter/material.dart';

class PaddingTextFormField extends StatelessWidget {
  const PaddingTextFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.width * 0.02);
  }
}
