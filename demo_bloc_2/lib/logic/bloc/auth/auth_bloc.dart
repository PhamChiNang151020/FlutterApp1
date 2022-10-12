import 'package:bloc/bloc.dart';
import 'package:demo_bloc_2/data/repo/auth/auth_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepo authRepo;

  AuthBloc(AuthState authState, this.authRepo) : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {});

    // @override
    Stream<AuthState> mapEvent(AuthEvent event) async* {
      var pref = await SharedPreferences.getInstance();
      if (event is StartEvent) {
        yield AuthInitial();
      } else if (event is LoginButtunPressed) {
        yield LoginLoadingState();
        var data = await authRepo.login(event.username, event.password);
        yield LoginSuccessState();
      }
    }
  }
}
