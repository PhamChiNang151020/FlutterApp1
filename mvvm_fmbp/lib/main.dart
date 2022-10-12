import 'package:flutter/material.dart';
import 'package:mvvm_fmbp/utils/routes/routes.dart';
import 'package:mvvm_fmbp/utils/routes/routes_name.dart';
import 'package:mvvm_fmbp/view_models/auth_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const FMBP());
}

class FMBP extends StatelessWidget {
  const FMBP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AuthViewModel())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: RoutesName.login,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
