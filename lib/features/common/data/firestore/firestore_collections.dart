import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drecipe/features/auth/domain/entities/drecipe_user.dart';
import 'package:drecipe/features/common/constants/firebase_constants.dart';

class FirestoreCollections {
  static final usersCollection = FirebaseFirestore.instance
      .collection(FirebaseConstants.users)
      .withConverter<DrecipeUser>(
        fromFirestore: (data, _) => DrecipeUser.fromJson(data.data() ?? {}),
        toFirestore: (data, _) => data.toJson(),
      );
}
