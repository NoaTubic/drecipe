import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
}
