import 'package:flutter/material.dart';
import 'package:mvvm_fmbp/respository/auth_repository.dart';
import 'package:mvvm_fmbp/utils/untils.dart';
import 'package:provider/provider.dart';

class AuthViewModel with ChangeNotifier {
  final _myRepo = AuthRepository();
  bool _loading = false;
  bool get loading => _loading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  Future<void> login(dynamic data, BuildContext context) async {
    setLoading(true);
    _myRepo.login(data).then((value) {
      setLoading(false);
      // final userPreference = Provider.of<>(context)
    }).onError((error, stackTrace) {
      setLoading(false);
      Utils.flushBarErrorMessage(error.toString(), context);
    });
  }
}
