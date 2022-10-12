class User {
  String? accessToken;
  String? tokenType;
  int? expiresIn;
  String? refreshToken;
  String? asSystemId;
  String? userName;
  String? asEmployeeId;
  String? issued;
  String? expires;

  User({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
    this.refreshToken,
    this.asSystemId,
    this.userName,
    this.asEmployeeId,
    this.issued,
    this.expires,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      accessToken: json["access_token"],
      asSystemId: json["as:system_id"],
      userName: json["userName"],
      asEmployeeId: json["as:employee_id"],
    );
  }

  // User({this.userId, this.name, this.email, this.phone, this.type, this.token, this.renewalToken});

  // factory User.fromJson(Map<String, dynamic> responseData) {
  //   return User(
  //       userId: responseData['id'],
  //       name: responseData['name'],
  //       email: responseData['email'],
  //       phone: responseData['phone'],
  //       type: responseData['type'],
  //       token: responseData['access_token'],
  //       renewalToken: responseData['renewal_token']
  //   );
  // }
}
