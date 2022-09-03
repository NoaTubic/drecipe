import 'package:drecipe/core/firebase/firebase_auth_facade.dart';
import 'package:drecipe/features/auth/ui/state/auth_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final IFirebaseAuthFacade _authFacade;

  AuthNotifier(this._authFacade) : super(const AuthState.initial());

  Future<void> requestAuthCheck() async {
    final userOption = await _authFacade.getSignedInUser();
    userOption.fold(
      () => state = const AuthState.unauthenticated(),
      (user) => state = const AuthState.authenticated(),
    );
  }

  Future<void> signOut() async {
    await _authFacade.signOut();
    state = const AuthState.unauthenticated();
  }
}
