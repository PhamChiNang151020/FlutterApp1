import 'package:app1/api/menu/ApiAccess.dart';
import 'package:app1/api/menu/ApiPermission.dart';
import 'package:app1/common/constants.dart';
import 'package:app1/model/menu/ModelAccess.dart';
import 'package:app1/model/menu/ModelPermission.dart';
import 'package:app1/screen/welcome/index.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LeftMenu extends StatelessWidget {
  const LeftMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: menuColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeaderMenu(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FutureBuilder(
                    future: DataPermission(),
                    builder: (context, data1) {
                      if (data1.hasError) {
                        return Center(
                          child: Text('Nodata'),
                        );
                      } else if (data1.hasData) {
                        var item1 = data1.data as List<ModelPermission>;
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TitleMenu(
                              text: '_permission'.tr(),
                            ),
                            Container(
                              // padding: const EdgeInsets.only(bottom: 5)?
                              // color: Colors.white,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: item1 == null ? 0 : item1.length,
                                itemBuilder: (context, index1) {
                                  return Container(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          onTap: () {
                                            print(
                                                item1[index1].name.toString());
                                          },
                                          leading: Image(
                                            width: 30,
                                            height: 30,
                                            image: AssetImage(
                                                item1[index1].icon.toString()),
                                          ),
                                          trailing: Image(
                                            width: 20,
                                            height: 20,
                                            image: AssetImage(
                                                'assets/icon/rightBTN.png'),
                                          ),
                                          title: Text(
                                            item1[index1].name.toString(),
                                            style: TextStyle(
                                              color: titleMenuColor,
                                              fontSize: 16,
                                            ),
                                          ).tr(),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                  FutureBuilder(
                    future: DataAccess(),
                    builder: (context, data2) {
                      if (data2.hasError) {
                        return Center(
                          child: Text('Nodata'),
                        );
                      } else if (data2.hasData) {
                        var item2 = data2.data as List<ModelAccess>;
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TitleMenu(
                              text: '_access'.tr(),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: item2 == null ? 0 : item2.length,
                                itemBuilder: (context, index2) {
                                  return Container(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          onTap: () {
                                            print(
                                                item2[index2].name.toString());
                                          },
                                          leading: Image(
                                            width: 30,
                                            height: 30,
                                            image: AssetImage(
                                                item2[index2].icon.toString()),
                                          ),
                                          trailing: Image(
                                            width: 20,
                                            height: 20,
                                            image: AssetImage(
                                                'assets/icon/rightBTN.png'),
                                          ),
                                          title: Text(
                                            item2[index2].name.toString(),
                                            style: TextStyle(
                                              color: titleMenuColor,
                                              fontSize: 16,
                                            ),
                                          ).tr(),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                  BtnLogout(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BtnLogout extends StatelessWidget {
  const BtnLogout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        width: double.infinity,
        // padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: ListTile(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => WelCome()));
            // print(item1[index1].name.toString());
            print('Đăng xuất');
          },
          leading: Image(
            width: 30,
            height: 30,
            image: AssetImage('assets/icon/log_out.png'),
          ),
          title: Text(
            '_logOut'.tr(),
            style: TextStyle(
              color: titleMenuColor,
              fontSize: 16,
            ),
          ).tr(),
        ),
      ),
    );
  }
}

class HeaderMenu extends StatelessWidget {
  const HeaderMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 250,
      color: menuColor,
      child: Center(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.only(top: 80)),
            ClipOval(
              child: Image(
                width: 80,
                height: 80,
                image: AssetImage('assets/images/avt.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                'Admin',
                style: TextStyle(
                  // color: Colo,
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Edit Profile'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TitleMenu extends StatelessWidget {
  const TitleMenu({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: titleMenuColor,
        ),
      ),
    );
  }
}
