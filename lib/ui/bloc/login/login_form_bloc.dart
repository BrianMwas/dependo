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
      emit(
        LoginFormData(email: event.email)
      );
    });

    on<PasswordChanged>((event, emit) {
      emit(LoginFormData(
        password: event.password,
      ),);
    });

    on<LoginButtonPressed>((event, emit) async {
      final currentState = state as LoginFormData;

      emit(
        LoginFormData(
            email: currentState.email,
            isSubmitting: true,
            password: currentState.password,
            showErrors: false,
            errors: [],
        )

      );
      final Result data = await authFacade.signIn(email: currentState.email!, password: currentState.password!);

      if(data is Error) {
        emit(
          LoginFormData(
            isSubmitting: false,
            showErrors: true,
            errors: [data.error]
          ),
        );
      }

      emit(
        LoginFormData(
          name: (data as Success).data
        )
      );
    });
  }
}
