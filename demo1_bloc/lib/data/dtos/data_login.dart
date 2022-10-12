import 'dtos_base.dart';

class DataLogin extends BaseDto {
  String username;
  String password;
  String granttype;
  String clientid;

  DataLogin({
    required this.username,
    required this.password,
    required this.granttype,
    required this.clientid,
  });

  @override
  Map toJson() {
    Map map = new Map();
    map["username"] = username;
    map["password"] = password;
    map["grant_type"] = granttype;
    map["client_id"] = clientid;
    return map;
  }
}
