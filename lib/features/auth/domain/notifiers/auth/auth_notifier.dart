import 'package:drecipe/features/auth/data/repositories/auth_repository.dart';
import 'package:drecipe/features/auth/domain/notifiers/auth/auth_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    ref.read(authRepositoryProvider),
  )..listenAuthChanges(),
);

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository _authRepository;

  AuthNotifier(this._authRepository) : super(const AuthState.unauthenticated());

  Future<void> listenAuthChanges() async {
    _authRepository.subscribeToAuthChanges().listen(
      (user) {
        if (user != null && user.emailVerified) {
          state = const AuthState.authenticated();
        }
      },
    );
  }

  Future<void> signOut() async {
    await _authRepository.signOut();
    state = const AuthState.unauthenticated();
  }

  Future<void> deleteAccount() async {
    // await _authRepository.deleteAccount();
    state = const AuthState.unauthenticated();
  }
}
