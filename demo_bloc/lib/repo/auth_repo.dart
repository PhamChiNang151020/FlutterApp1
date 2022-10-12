class AuthRepository {
  Future<void> login() async {
    print("attemp");
    Future.delayed(const Duration(milliseconds: 100));
    print("login in");
  }
}
