part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class StartEvent extends AuthEvent {}

class LoginButtunPressed extends AuthEvent {
  final String username;
  final String password;

  LoginButtunPressed({required this.username, required this.password});
}
