import 'package:demo_bloc/auth/form.dart';

class LoginState {
  final String username;
  final String password;
  final FormSubmissionStatus formStatus;
  LoginState({
    this.username = "",
    this.password = "",
    this.formStatus = const InitialFormStatus(),
  });
  LoginState copyWith({
    String? username,
    String? password,
    FormSubmissionStatus? formStatus,
  }) {
    return LoginState(
      username: username!,
      password: password!,
      formStatus: formStatus!,
    );
  }
}
