part of 'pets_list_bloc.dart';

abstract class PetsListState extends Equatable {
  const PetsListState();
}

class PetsListInitial extends PetsListState {
  @override
  List<Object> get props => [];
}

class PetsListLoading extends PetsListState {
  @override
  List<Object> get props => [];
}

class PetsListSuccess extends PetsListState {
  final List<Pet> pets;

  PetsListSuccess({required this.pets});

  @override
  List<Object> get props => [this.pets];
}

class PetsListFailure extends PetsListState {
  final String error;

  PetsListFailure({required this.error});

  @override
  List<Object> get props => [this.error];
}
