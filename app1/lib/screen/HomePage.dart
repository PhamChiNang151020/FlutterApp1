import 'package:app1/common/constants.dart';
import 'package:app1/widget/menu/LeftMenu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     drawer: LeftMenu(),
  //     appBar: AppBar(
  //       //Xóa button back
  //       // automaticallyImplyLeading: false,

  //       title: Text('HomePage'),
  //     ),
  //     body: Container(
  //       child: ClipOval(
  //         child: Image(
  //           image: AssetImage('assets/images/avt.png'),
  //         ),
  //       ),
  //     ),
  //   );
  // }
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: defaultColor,
      key: _scaffoldKey,
      drawer: LeftMenu(),
      body: ListView(children: [
        Container(
          margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
          // color: Colors.amber,
          alignment: Alignment.topLeft,
          // margin: EdgeInsets.only(left: 15.0, top: 100.0),
          child: IconButton(
            icon: Image.asset('assets/icon/menu.png'),
            onPressed: () {
              print('Click');
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
      ]),
    );
  }
}
