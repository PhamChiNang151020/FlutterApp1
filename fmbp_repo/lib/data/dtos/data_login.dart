import 'dtobase.dart';

class DataLogin extends BaseDto {
  String username;
  String password;

  DataLogin({
    required this.username,
    required this.password,
  });

  @override
  Map toJson() {
    Map map = {};
    map["username"] = username;
    map["password"] = password;
    map["grant_type"] = "password";
    map["client_id"] = "MB_ENT";
    return map;
  }
}
