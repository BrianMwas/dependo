// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:bloc_test/bloc_test.dart';
import 'package:dependo/data/models/pet.model.dart';
import 'package:dependo/data/models/users.model.dart';
import 'package:dependo/data/repository/impl/pets_repository.dart';
import 'package:dependo/injection.dart';
import 'package:dependo/ui/application/pets/pets_list/pets_list_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:dependo/main.dart';
import 'package:mockito/annotations.dart';

import 'bloc/pet_list_bloc.test.dart';

@GenerateMocks([User, Pet])
void main() {
  petsTestBloc();
}



