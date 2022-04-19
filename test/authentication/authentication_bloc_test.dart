// Declare the
import 'package:bloc_test/bloc_test.dart';
import 'package:dependo/ui/bloc/login/login_form_bloc.dart';
import 'package:dependo/ui/bloc/registration/registration_form_bloc.dart';

class MockRegistrationBloc
    extends MockBloc<RegistrationFormEvent, RegistrationFormState>
    implements RegistrationFormBloc {}

class MockLoginBloc extends MockBloc<LoginFormEvent, LoginFormState>
    implements LoginFormBloc {}

void main(List<String> args) {
  final regbloc = MockRegistrationBloc();
}
