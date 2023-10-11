import 'package:dartz/dartz.dart';
import 'package:drecipe/core/providers/providers.dart';
import 'package:drecipe/features/auth/domain/entities/drecipe_user.dart';
import 'package:drecipe/features/common/data/firestore/firestore_collections.dart';
import 'package:drecipe/features/common/domain/entities/failure.dart';
import 'package:drecipe/features/common/domain/utils/either_failure_or.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userRepositoryProvider = Provider<UserRepository>(
  (ref) => UserRepositoryImpl(
    ref.read(firebaseAuthProvider),
  ),
);

abstract class UserRepository {
  EitherFailureOr<Unit> initializeUser();

  StreamFailureOr<DrecipeUser> getSignedInUser();

  Future<void> deleteSignedInUser();
}

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;
  final _usersCollection = FirestoreCollections.usersCollection;

  @override
  EitherFailureOr<Unit> initializeUser() async {
    try {
      final currentUser = _firebaseAuth.currentUser;

      final userDoc = await _usersCollection.doc(currentUser?.uid).get();
      if (!userDoc.exists) {
        await _usersCollection.doc(currentUser?.uid).set(
              DrecipeUser(
                id: currentUser!.uid,
                email: currentUser.email!,
                username: currentUser.displayName!,
              ),
            );
      }
      return right(unit);
    } on FirebaseException {
      return left(Failure.generic());
    }
  }

  @override
  StreamFailureOr<DrecipeUser> getSignedInUser() {
    final currentUser = _firebaseAuth.currentUser;

    return _usersCollection
        .doc(currentUser?.uid)
        .snapshots()
        .map((snapshot) => right(snapshot.data()!));
  }

  @override
  Future<void> deleteSignedInUser() {
    throw UnimplementedError();
  }
}
