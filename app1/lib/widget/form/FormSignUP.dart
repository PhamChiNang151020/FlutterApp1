import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common/constants.dart';
import '../text/TextFieldName.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _isObscure1 = true;
  bool _isObscure2 = true;
  bool _validate = false;

  final SignUpFail = SnackBar(
    content: Text('_signUpFail'.tr()),
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
            text: '_userName'.tr(),
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
              decoration: InputDecoration(
                border: textFieldBorder,
                hintText: '_enterYourUserName'.tr(),
                suffixIcon: Icon(FontAwesomeIcons.user),
              ),
            ),
          ),
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
            text: '_phone'.tr(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: textFieldBorder,
                hintText: '_enterYourPhone'.tr(),
                suffixIcon: Icon(FontAwesomeIcons.mobile),
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
                  icon: Icon(_isObscure1
                      ? FontAwesomeIcons.lock
                      : FontAwesomeIcons.lockOpen),
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
          TextFieldName(
            text: '_confirmPassword'.tr(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: TextFormField(
              obscureText: _isObscure2,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '_warning'.tr();
                }
                return null;
              },
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(_isObscure2
                      ? FontAwesomeIcons.lock
                      : FontAwesomeIcons.lockOpen),
                  onPressed: () {
                    setState(() {
                      _isObscure2 = !_isObscure2;
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
                    print('Đăng ký thành công');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SignUpFail);
                  }
                },
                child: Text(
                  '_signUp'.tr(),
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