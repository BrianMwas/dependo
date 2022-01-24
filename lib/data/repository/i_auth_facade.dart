import 'package:dependo/data/models/user.model.dart';

import '../../result.model.dart';

abstract class IAuthFacade {
  Future<Result> signIn({required String email, required String password,});
  Future<Result> register({required String username, required String email, required String password});
  Future<User?> getUser();
  Future<void> logOut();
}