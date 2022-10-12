import 'package:mvvm_fmbp/data/network/api/url.dart';
import 'package:mvvm_fmbp/data/network/common_services.dart';
import 'package:mvvm_fmbp/data/network/network_services.dart';

class AuthRepository {
  final CommonServices _commonServices = NetworkServices();
  Future<dynamic> login(dynamic data) async {
    try {
      dynamic response = await _commonServices.getToken(UrlAPI.token, data);
      return response;
    } catch (e) {
      throw e;
    }
  }
}
