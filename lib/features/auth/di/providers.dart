import 'package:drecipe/core/di/providers.dart';
import 'package:drecipe/features/auth/ui/state/auth_notifier.dart';
import 'package:drecipe/features/auth/ui/state/auth_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    ref.read(authFacadeProvider),
  )..requestAuthCheck(),
);
