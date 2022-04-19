part of 'registration_form_bloc.dart';

class RegistrationFormState extends Equatable {
  final String? username;
  final String? email;
  final String? password;
  final bool? isSubmitting;
  final List<String>? errors;

  RegistrationFormState({
    this.username,
    this.email,
    this.password,
    this.isSubmitting,
    this.errors,
  });

  @override
  List<Object?> get props => [username, email, password, isSubmitting, errors];
}

class RegistrationFormInitial extends RegistrationFormState {
  RegistrationFormInitial()
      : super(
            email: "",
            password: "",
            username: "",
            isSubmitting: false,
            errors: List.empty());
}

class Loading extends RegistrationFormState {
  Loading() : super(isSubmitting: true);
}

class ShowRegistrationErrors extends RegistrationFormState {
  final List<String> errors;
  ShowRegistrationErrors({required this.errors}) : super(errors: errors);
}

class RegistrationData extends RegistrationFormState {
  final String? email;
  final String? username;
  final String? password;

  RegistrationData({
    this.email,
    this.username,
    this.password,
  }) : super(email: email, password: password, username: username);
}
