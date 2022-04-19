import 'package:bloc/bloc.dart';
import 'package:dependo/data/repository/i_auth_facade.dart';
import 'package:dependo/result.model.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'login_form_event.dart';
part 'login_form_state.dart';

@injectable
class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final IAuthFacade authFacade;

  LoginFormBloc(this.authFacade) : super(LoginFormInitial()) {
    on<EmailChanged>((event, emit) {
      emit(LoginFormData(email: event.email, password: state.password));
    });

    on<PasswordChanged>((event, emit) {
      emit(LoginFormData(password: event.password, email: state.email));
    });

    on<LoginButtonPressed>((event, emit) async {
      final currentState = state as LoginFormData;

      emit(LoginLoading());
      final Result data = await authFacade.signIn(
          email: currentState.email!, password: currentState.password!);

      if (data is Error) {
        emit(
          ShowLoginErrors(showErrors: true, errors: [data.error]),
        );
      }

      emit(LoadingSuccessful(name: "Successful"));
    });
  }
}
