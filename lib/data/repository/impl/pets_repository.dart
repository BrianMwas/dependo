import 'package:dependo/data/models/pet.model.dart';
import 'package:dependo/data/repository/i_pets_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IPetsFacade)
class PetFacade implements IPetsFacade {
  @override
  Future<List<Pet>> getAllPets() {
    // TODO: implement getAllPets
    throw UnimplementedError();
  }

  @override
  Future<Pet> getPetDetails(String id) {
    // TODO: implement getPetDetails
    throw UnimplementedError();
  }

  @override
  Future<List<Pet>> getUsersPets(String userId) {
    // TODO: implement getUsersPets
    throw UnimplementedError();
  }
}