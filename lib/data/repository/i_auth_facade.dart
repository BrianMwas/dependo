import 'package:dependo/data/models/user.model.dart';

abstract class IAuthFacade {
  Future<void> signIn({required String email, required String password,});
  Future<void> register({required String username, required String email, required String password});
  Future<User?> getUser();
  Future<void> logOut();
}