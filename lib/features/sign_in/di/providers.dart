import 'package:drecipe/core/di/providers.dart';
import 'package:drecipe/features/sign_in/ui/state/sign_in_notifier.dart';
import 'package:drecipe/features/sign_in/ui/state/sign_in_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signInNotifierProvider =
    StateNotifierProvider<SignInNotifier, SignInState>(
  (ref) => SignInNotifier(
    ref.read(authFacadeProvider),
  ),
);
