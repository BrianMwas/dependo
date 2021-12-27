part of 'pets_details_bloc.dart';

abstract class PetsDetailsEvent extends Equatable {
  const PetsDetailsEvent();
}

class RequestPetsDetails extends PetsDetailsEvent {
  final String petId;

  RequestPetsDetails({required this.petId});

  @override
  List<Object?> get props => [this.petId];
}
