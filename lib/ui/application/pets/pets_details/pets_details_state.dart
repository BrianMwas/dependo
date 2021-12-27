part of 'pets_details_bloc.dart';

abstract class PetsDetailsState extends Equatable {
  const PetsDetailsState();
}

class PetsDetailsInitial extends PetsDetailsState {
  @override
  List<Object> get props => [];
}

class PetsDetailsLoading extends PetsDetailsState {
  @override
  List<Object> get props => [];
}

class PetsDetailsSuccess extends PetsDetailsState {
  final Pet petDetail;

  PetsDetailsSuccess({required this.petDetail});

  @override
  List<Object> get props => [this.petDetail];
}

class PetsDetailsFailure extends PetsDetailsState {
  final String error;

  PetsDetailsFailure({required this.error});

  @override
  List<Object> get props => [this.error];
}
