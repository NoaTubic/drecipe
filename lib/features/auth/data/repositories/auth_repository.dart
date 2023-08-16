import 'package:dartz/dartz.dart';
import 'package:drecipe/features/auth/data/repositories/user_repository.dart';
import 'package:drecipe/features/common/domain/entities/failure.dart';
import 'package:drecipe/features/common/domain/utils/either_failure_or.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => AuthRepositoryImpl(
    ref.read(userRepositoryProvider),
  ),
);

abstract class AuthRepository {
  EitherFailureOr<Unit> register(
      {required String email,
      required String password,
      required String username});

  EitherFailureOr<Unit> verifyEmail();

  Stream<User?> subscribeToAuthChanges();

  EitherFailureOr<Unit> signInAnonymously();

  EitherFailureOr<Unit> signInWithEmailAndPassword(
      {required String email, required String password});

  EitherFailureOr<Unit> resetPassword({required String email});

  EitherFailureOr<Unit> changePassword(
      {required String currentPassword, required String newPassword});

  Future<void> signOut();
}

class AuthRepositoryImpl implements AuthRepository {
  final _firebaseAuth = FirebaseAuth.instance;
  final UserRepository _userRepository;

  AuthRepositoryImpl(this._userRepository);

  @override
  EitherFailureOr<Unit> register(
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
        return left(
            Failure.generic(title: S.current.failure_email_already_in_user));
      } else {
        return left(Failure.generic());
      }
    }
  }

  @override
  EitherFailureOr<Unit> verifyEmail() async {
    User? user = _firebaseAuth.currentUser;
    try {
      if (user != null && !user.emailVerified) {
        await user.sendEmailVerification();
      }
      return right(unit);
    } on FirebaseAuthException {
      return left(Failure.generic());
    }
  }

  @override
  Stream<User?> subscribeToAuthChanges() async* {
    yield* _firebaseAuth.authStateChanges();
  }

  @override
  EitherFailureOr<Unit> signInAnonymously() async {
    try {
      await _firebaseAuth.signInAnonymously();
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(Failure.generic());
    }
  }

  @override
  EitherFailureOr<Unit> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      if (!_firebaseAuth.currentUser!.emailVerified) {
        return left(
            Failure.generic(title: S.current.failure_email_not_verified));
      }
      _userRepository.initializeUser();
      return right(unit);
    } on FirebaseException catch (exception) {
      if (exception.code == 'wrong-password' ||
          exception.code == 'user-not-found') {
        return left(Failure.generic(
            title: S.current.failure_invalid_email_and_password_combination));
      } else {
        return left(Failure.generic());
      }
    }
  }

  @override
  EitherFailureOr<Unit> changePassword(
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
      return left(Failure.generic());
    }
  }

  @override
  EitherFailureOr<Unit> resetPassword({required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return right(unit);
    } on FirebaseAuthException catch (exception) {
      if (exception.code == 'user-not-found') {
        return left(
            Failure.generic(title: S.current.failure_invalid_user_not_found));
      } else {
        return left(Failure.generic());
      }
    }
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
