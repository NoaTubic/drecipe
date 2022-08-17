import 'package:firebase_auth/firebase_auth.dart';

abstract class IFirebaseAuthFacade {
  Future<void> registerWithEmailAddressAndPassword(
      {required String emailAddress, required String password});
}

class FirebaseAuthFacade implements IFirebaseAuthFacade {
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<void> registerWithEmailAddressAndPassword(
      {required String emailAddress, required String password}) async {
    try {} on FirebaseAuthException catch (exception) {
      if (exception.code == 'email-already-in-use') {}
      {}
    }
  }
}
