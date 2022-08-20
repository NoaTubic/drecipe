import 'package:dartz/dartz.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/registration/domain/entities/drecipe_user.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IFirebaseAuthFacade {
  Future<Either<AuthFailure, Unit>> signInAnonymously();
  Future<Either<AuthFailure, Unit>> register(
      {required String email, required String password});
  Future<Option<DrecipeUser>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> verifyEmail();
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required String email, required String password});
  Future<void> signOut();
}

class FirebaseAuthFacade implements IFirebaseAuthFacade {
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<Either<AuthFailure, Unit>> signInAnonymously() async {
    try {
      await _firebaseAuth.signInAnonymously();
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> register(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(unit);
    } on FirebaseAuthException catch (exception) {
      if (exception.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Option<DrecipeUser>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<Either<AuthFailure, Unit>> verifyEmail() async {
    User? user = _firebaseAuth.currentUser;
    try {
      if (user != null && !user.emailVerified) {
        await user.sendEmailVerification();
      }
      return right(unit);
    } on FirebaseAuthException {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      if (!_firebaseAuth.currentUser!.emailVerified) {
        return left(const AuthFailure.emailNotVerified());
      }
      return right(unit);
    } on FirebaseException catch (exception) {
      if (exception.code == 'wrong-password' ||
          exception.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        _firebaseAuth.signOut(),
      ]);
}
