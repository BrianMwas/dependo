

import 'package:dependo/data/models/users.model.dart';

abstract class IUsersFacade {
  Future<List<User>> getAllUsers();
  Future<User> getUser(String id);
}