import 'package:demo_bloc/auth/bloc/login_event.dart';
import 'package:demo_bloc/auth/bloc/login_state.dart';
import 'package:demo_bloc/auth/form.dart';
import 'package:demo_bloc/repo/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepo;

  LoginBloc(this.authRepo) : super(LoginState());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    //username update
    if (event is LoginUserNameChanged) {
      yield state.copyWith(username: event.username);
    }
    //pasword
    else if (event is LoginPasswordChanged) {
      yield state.copyWith(password: event.password);
    }
    //submit
    else if (event is LoginSubmitted) {
      yield state.copyWith(formStatus: FormSubmitting());
      try {
        await authRepo.login();
        yield state.copyWith(formStatus: SubmissionSuccess());
      } catch (e) {
        final er = Exception(e);
        yield state.copyWith(formStatus: SubmissionFailed(er));
      }
    }
  }
}
