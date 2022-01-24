part of 'login_form_bloc.dart';

abstract class LoginFormState extends Equatable {
  const LoginFormState();
}

class LoginFormInitial extends LoginFormState {
  @override
  List<Object> get props => [];
}

class LoginFormData extends LoginFormState {
  final String? email;
  final bool? isSubmitting;
  final String? password;
  final bool? showErrors;
  final List<String>? errors;
  final String? name;

  LoginFormData({
    this.email,
    this.isSubmitting,
    this.password,
    this.showErrors,
    this.errors,
    this.name
  });

  @override
  List<Object?> get props => [
      this.email,
      this.isSubmitting,
      this.password,
      this.showErrors,
      this.errors,
      this.name,
  ];
}
