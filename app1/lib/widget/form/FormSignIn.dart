import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common/constants.dart';
import '../../screen/HomePage.dart';
import '../text/TextFieldName.dart';

class FormSignIn extends StatefulWidget {
  const FormSignIn({Key? key}) : super(key: key);

  @override
  State<FormSignIn> createState() => _FormSignInState();
}

class _FormSignInState extends State<FormSignIn> {
  bool _isObscure1 = true;
  bool _isObscure2 = true;
  bool _validate = false;

  final SignInFail = SnackBar(
    content: Text('_signInFail'.tr()),
  );

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFieldName(
            text: 'Email',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '_warning'.tr();
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: textFieldBorder,
                hintText: '_enterYourEmail'.tr(),
                suffixIcon: Icon(FontAwesomeIcons.envelope),
              ),
            ),
          ),
          TextFieldName(
            text: '_password'.tr(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: TextFormField(
              obscureText: _isObscure1,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '_warning'.tr();
                }
                return null;
              },
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(_isObscure1   ? FontAwesomeIcons.lock  : FontAwesomeIcons.lockOpen),
                  onPressed: () {
                    setState(() {
                      _isObscure1 = !_isObscure1;
                    });
                  },
                ),
                border: textFieldBorder,
                hintText: '_enterYourPassword'.tr(),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 45,
            child: ElevatedButton(
                style: TextButton.styleFrom(
                    backgroundColor: btnColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                    print('Đăng nhập thành công');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SignInFail);
                  }
                },
                child: Text(
                  '_signIn'.tr(),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
