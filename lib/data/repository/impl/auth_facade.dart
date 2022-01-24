import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dependo/data/models/user.model.dart' as u;
import 'package:dependo/data/repository/i_auth_facade.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../result.model.dart';

@Injectable(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  AuthFacade(this._firebaseAuth, this._firebaseFirestore);

  @override
  Future<u.User?> getUser() async {
    try {
      final uid = _firebaseAuth.currentUser!.uid;
      final currentUser = await _firebaseFirestore.doc("users/$uid").snapshots().first;
      return currentUser.toUser();
    } on FirebaseAuthException catch(e) {
      print("We failed ${e.message}");
    }
  }

  @override
  Future<Result> register({required String username, required String email, required String password}) async {
     try {
      final data = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      await _firebaseFirestore.doc("users/${data.user!.uid}")
          .set({"email": email, "username": username});
      return Success(true);
     } on FirebaseAuthException catch(error) {
       return Error(error.message!);
     }
  }

  @override
  Future<Result> signIn({required String email, required String password}) async {
    try {
      final data = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      final userDoc = await _firebaseFirestore.collection("users").doc(data.user!.uid).snapshots().first;
      return Success<u.User>(userDoc.toUser());
    } on FirebaseAuthException catch (e) {
      return Error(e.message!);
    }
  }

  @override
  Future<void> logOut() => _firebaseAuth.signOut();
}

extension DocumentSnapX on DocumentSnapshot<Map<String, dynamic>> {
  u.User toUser() {
    return u.User.fromJson(this.data()!)
        ..id = this.id;
  }
}