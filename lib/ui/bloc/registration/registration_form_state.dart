part of 'registration_form_bloc.dart';

abstract class RegistrationFormState extends Equatable {
  const RegistrationFormState();
}

class RegistrationFormInitial extends RegistrationFormState {
  @override
  List<Object> get props => [];
}

class Loading extends RegistrationFormState {
  @override
  List<Object> get props => [];
}

class ShowErrors extends RegistrationFormState {
  final bool showErrors;

  ShowErrors(this.showErrors);

  @override
  List<Object> get props => [this.showErrors];
}

class RegistrationFailed extends RegistrationFormState {
  final String error;

  RegistrationFailed({required this.error});

  @override
  List<Object> get props => [this.error];
}

class RegistrationData extends RegistrationFormState {
  final String email;
  final String username;
  final String password;

  RegistrationData({required this.email, required this.username, required this.password, });

  @override
  List<Object> get props => [this.email, this.username, this.password];
}