part of 'pets_list_bloc.dart';

abstract class PetsListEvent extends Equatable {
  const PetsListEvent();
}

class PetsListRequested extends PetsListEvent {
  @override
  List<Object?> get props => [];
}
