

import 'package:dependo/data/models/pet.model.dart';

abstract class IPetsFacade {
  Future<List<Pet>> getAllPets();
  Future<List<Pet>> getUsersPets(String userId);
  Future<Pet> getPetDetails(String id);
}