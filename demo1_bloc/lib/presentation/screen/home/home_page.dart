import 'package:flutter/material.dart';

import '../menu/menu.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const HomePage());
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var version = "1.0.0";
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(),
        drawer: Menu(),
        // body: Center(
        //   child: Column(
        //     mainAxisSize: MainAxisSize.min,
        //     children: <Widget>[
        //       Builder(
        //         builder: (context) {
        //           // final userId = context.select(
        //           //   (AuthenticationBloc bloc) => bloc.state.user.id,
        //           // );
        //           return Container();
        //         },
        //       ),
        //       ElevatedButton(
        //         child: const Text('Logout'),
        //         onPressed: () {
        //           context
        //               .read<AuthenticationBloc>()
        //               .add(AuthenticationLogoutRequested());
        //         },
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}

