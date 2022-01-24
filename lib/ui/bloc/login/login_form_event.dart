part of 'login_form_bloc.dart';

abstract class LoginFormEvent extends Equatable {
  const LoginFormEvent();
}


class EmailChanged extends LoginFormEvent {
  final String email;

  EmailChanged(this.email);

  @override
  List<Object?> get props => [this.email];
}

class PasswordChanged extends LoginFormEvent {
  final String password;

  PasswordChanged(this.password);

  @override
  List<Object?> get props => [this.password];
}

class LoginButtonPressed extends LoginFormEvent {
  @override
  List<Object?> get props => [];
}