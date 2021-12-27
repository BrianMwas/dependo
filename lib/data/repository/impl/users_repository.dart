import 'package:dependo/data/models/users.model.dart';
import 'package:dependo/data/repository/i_user_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUsersFacade)
class UserFacade implements IUsersFacade {
  @override
  Future<List<User>> getAllUsers() {
    // TODO: implement getAllUsers
    throw UnimplementedError();
  }

  @override
  Future<User> getUser(String id) {
    // TODO: implement getUser
    throw UnimplementedError();
  }

}