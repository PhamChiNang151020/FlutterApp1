import 'dart:ui';

import 'package:app1/screen/auth/SignInScreen.dart';
import 'package:app1/screen/auth/SignUpScreen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common/constants.dart';

class Language {
  Locale locale;
  String langName;
  Language({
    required this.locale,
    required this.langName,
  });
}

class WelCome extends StatefulWidget {
  const WelCome({Key? key}) : super(key: key);

  @override
  State<WelCome> createState() => _WelComeState();
}

class _WelComeState extends State<WelCome> {
  List<Language> languageList = [
    Language(locale: const Locale('en'), langName: 'English - UK'),
    Language(locale: const Locale('vi'), langName: 'VietNam - VN'),
  ];
  // Chọn ngôn ngữ cuối cùng khi chọn trong menu dropdown ngôn ngữ
  Language? selectedLang;
  @override
  Widget build(BuildContext context) {
    selectedLang = languageList.singleWhere((e) => e.locale == context.locale);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Image.asset(
              'assets/images/splash_bg.png',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                children: [
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 150),
                    child: Text(
                      '_welcome'.tr().toUpperCase() +
                          '\n' +
                          '_toMyApp'.tr().toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                          backgroundColor: btnColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      child: Text('_signUp'.tr().toUpperCase()),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(10)),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                          backgroundColor: btnColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInScreen()));
                      },
                      child: Text('_signIn'.tr().toUpperCase()),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                      child: DropdownButton<Language>(
                        items: languageList
                            .map<DropdownMenuItem<Language>>((Language value) {
                          return DropdownMenuItem<Language>(
                            value: value,
                            child: Text(
                              value.langName,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          );
                        }).toList(),
                        value: selectedLang,
                        onChanged: (newValue) {
                          setState(() {
                            selectedLang = newValue!;
                          });
                          if (newValue!.langName == 'English - UK') {
                            context.setLocale(const Locale('en'));
                          } else if (newValue.langName == 'VietNam - VN') {
                            context.setLocale(const Locale('vi'));
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
