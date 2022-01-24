part of 'registration_form_bloc.dart';

abstract class RegistrationFormEvent extends Equatable {
  const RegistrationFormEvent();
}

class UsernameChanged extends RegistrationFormEvent {
  final String username;

  UsernameChanged(this.username);

  @override
  List<Object?> get props => [this.username];
}

class EmailChanged extends RegistrationFormEvent {
  final String email;

  EmailChanged(this.email);


  @override
  List<Object?> get props => [this.email];
}

class PasswordChanged extends RegistrationFormEvent {
  final String password;

  PasswordChanged(this.password);

  @override
  List<Object?> get props => [this.password];
}

class RegistrationBtnPressed extends RegistrationFormEvent {
  RegistrationBtnPressed();
  @override
  List<Object?> get props => [];
}

