import 'package:app1/widget/menu/LeftMenu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: LeftMenu(),
      appBar: AppBar(
        //Xóa button back
        // automaticallyImplyLeading: false,

        title: Text('HomePage'),
      ),
      body: Container(
        child: ClipOval(
          child: Image(
            image: AssetImage('assets/images/avt.png'),
          ),
        ),
      ),
    );
  }
}
