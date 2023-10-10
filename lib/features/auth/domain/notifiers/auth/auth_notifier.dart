import 'package:drecipe/features/auth/data/repositories/auth_repository.dart';
import 'package:drecipe/features/auth/domain/notifiers/auth/auth_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    ref.read(authRepositoryProvider),
    ref,
  )..listenAuthChanges(),
);

final isUserAnonymous = StateProvider<bool>((ref) {
  final authState = ref.watch(authNotifierProvider);
  return authState.maybeWhen(
    authenticated: () => false,
    orElse: () => true,
  );
});

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository _authRepository;
  StateNotifierProviderRef<AuthNotifier, AuthState> ref;

  AuthNotifier(this._authRepository, this.ref)
      : super(const AuthState.unauthenticated());

  Future<void> listenAuthChanges() async {
    _authRepository.subscribeToAuthChanges().listen(
      (user) {
        if (user != null && user.emailVerified) {
          if (user.isAnonymous) {
            ref.read(isUserAnonymous.notifier).state = true;
          }
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
