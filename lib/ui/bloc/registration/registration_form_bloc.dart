import 'package:bloc/bloc.dart';
import 'package:dependo/data/repository/i_auth_facade.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'registration_form_event.dart';
part 'registration_form_state.dart';

@injectable
class RegistrationFormBloc
    extends Bloc<RegistrationFormEvent, RegistrationFormState> {
  final IAuthFacade _authFacade;

  RegistrationFormBloc(this._authFacade) : super(RegistrationFormInitial()) {
    on<UsernameChanged>((event, emit) {
      emit(RegistrationData(
          email: state.email,
          username: event.username,
          password: state.password));
    });

    on<EmailChanged>((event, emit) {
      emit(RegistrationData(
          email: event.email,
          username: state.username,
          password: state.password));
    });

    on<PasswordChanged>((event, emit) {
      emit(RegistrationData(
          email: state.email,
          username: state.username,
          password: event.password));
    });

    on<RegistrationBtnPressed>((event, emit) {
      // TODO: implement event handler
    });
  }
}
