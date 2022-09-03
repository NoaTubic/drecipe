import 'package:dartz/dartz.dart';
import 'package:drecipe/core/di/providers.dart';
import 'package:drecipe/features/auth/ui/state/auth_notifier.dart';
import 'package:drecipe/features/auth/ui/state/auth_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    ref.read(authFacadeProvider),
  ),
);

final initAuthProvider = FutureProvider<Unit>((ref) async {
  final authProvider = ref.watch(authNotifierProvider.notifier);
  authProvider.requestAuthCheck();
  return unit;
});
