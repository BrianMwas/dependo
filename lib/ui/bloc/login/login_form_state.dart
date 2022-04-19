part of 'login_form_bloc.dart';

class LoginFormState extends Equatable {
  final String? username;
  final String? email;
  final String? password;
  final bool? isSubmitting;
  final List<String>? errors;
  LoginFormState(
      {this.username,
      this.email,
      this.password,
      this.isSubmitting,
      this.errors});

  @override
  List<Object?> get props => [username, email, password, isSubmitting, errors];
}

class LoginFormInitial extends LoginFormState {
  LoginFormInitial()
      : super(
            email: "", password: "", errors: List.empty(), isSubmitting: false);
}

class LoginLoading extends LoginFormState {
  LoginLoading() : super(isSubmitting: true);
}

class ShowLoginErrors extends LoginFormState {
  final bool? showErrors;
  final List<String> errors;

  ShowLoginErrors({this.showErrors, required this.errors})
      : super(errors: errors, isSubmitting: false);
}

class LoginFormData extends LoginFormState {
  final String? email;
  final String? password;

  LoginFormData({
    this.email,
    this.password,
  }) : super(email: email, password: password);

  LoginFormData copyWith({String? currentEmail, String? currentPassword}) {
    return LoginFormData(
      email: currentEmail ?? email,
      password: password ?? this.password,
    );
  }
}

class LoadingSuccessful extends LoginFormState {
  final String name;

  LoadingSuccessful({
    required this.name,
  });

  @override
  List<Object> get props => [this.name];
}
