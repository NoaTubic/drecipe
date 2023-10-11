import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;

part 'drecipe_user.freezed.dart';
part 'drecipe_user.g.dart';

@freezed
class DrecipeUser with _$DrecipeUser {
  const factory DrecipeUser({
    required String id,
    required String email,
    required String username,
  }) = _DrecipeUser;

  factory DrecipeUser.fromJson(Map<String, dynamic> json) =>
      _$DrecipeUserFromJson(json);
}

extension FirebaseUserExtension on firebase.User {
  DrecipeUser toDomain() {
    return DrecipeUser(
      id: uid,
      email: email!,
      username: displayName!,
    );
  }
}
