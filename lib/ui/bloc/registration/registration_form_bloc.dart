import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'registration_form_event.dart';
part 'registration_form_state.dart';

class RegistrationFormBloc extends Bloc<RegistrationFormEvent, RegistrationFormState> {
  RegistrationFormBloc() : super(RegistrationFormInitial()) {
    on<RegistrationFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
