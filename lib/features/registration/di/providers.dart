import 'package:drecipe/core/di/providers.dart';
import 'package:drecipe/features/registration/ui/state/registration_notifier.dart';
import 'package:drecipe/features/registration/ui/state/registration_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final registrationNotifierProvider =
    StateNotifierProvider<RegistrationNotifier, RegistrationState>(
  (ref) => RegistrationNotifier(
    ref.read(authFacadeProvider),
  ),
);
