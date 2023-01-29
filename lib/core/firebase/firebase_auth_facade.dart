import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:drecipe/core/firebase/firebase_constants.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/registration/domain/entities/drecipe_user.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IFirebaseAuthFacade {
  Future<Either<AuthFailure, Unit>> signInAnonymously();
  Future<Either<AuthFailure, Unit>> register(
      {required String email,
      required String password,
      required String username});
  Future<Either<Failure, Unit>> initializeUser();
  Future<Option<DrecipeUser>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> verifyEmail();
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required String email, required String password});
  Future<Either<AuthFailure, Unit>> resetPassword({required String email});
  Future<Either<AuthFailure, Unit>> changePassword(
      {required String currentPassword, required String newPassword});
  Future<void> signOut();
  Future<void> deleteUser();
}

class FirebaseAuthFacade implements IFirebaseAuthFacade {
  final _firebaseAuth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

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
      {required String email,
      required String password,
      required String username}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await _firebaseAuth.currentUser!.updateDisplayName(username);

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
  Future<Either<Failure, Unit>> initializeUser() async {
    try {
      final snapShot = await FirebaseFirestore.instance
          .collection(Collections.users)
          .doc(FirebaseAuth.instance.currentUser?.uid)
          .get();
      if (!snapShot.exists) {
        // Document doesn't exist
        _firestore
            .collection(Collections.users)
            .doc(FirebaseAuth.instance.currentUser?.uid)
            .set(
          {
            "username": FirebaseAuth.instance.currentUser?.displayName,
            "email": FirebaseAuth.instance.currentUser?.email,
          },
          SetOptions(merge: true),
        );
      }
      return right(unit);
    } on FirebaseException {
      return left(const Failure.unexpectedError());
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
      initializeUser();
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
  Future<Either<AuthFailure, Unit>> resetPassword(
      {required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return right(unit);
    } on FirebaseAuthException catch (exception) {
      if (exception.code == 'user-not-found') {
        return left(const AuthFailure.userNotFound());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> changePassword(
      {required String currentPassword, required String newPassword}) async {
    try {
      User? user = _firebaseAuth.currentUser;
      final reauthenticateResult = await signInWithEmailAndPassword(
          email: user!.email!, password: currentPassword);
      return reauthenticateResult.fold(
        (failure) => left(failure),
        (success) async => await user.updatePassword(newPassword).then(
              (_) => right(unit),
            ),
      );
    } on FirebaseAuthException {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        _firebaseAuth.signOut(),
      ]);

  @override
  Future<void> deleteUser() async {
    User? user = _firebaseAuth.currentUser;

    await user!.delete();
  }
}
