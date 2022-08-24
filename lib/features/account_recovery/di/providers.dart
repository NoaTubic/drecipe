import 'package:drecipe/core/di/providers.dart';
import 'package:drecipe/features/account_recovery/ui/state/account_recovery_notifier.dart';
import 'package:drecipe/features/account_recovery/ui/state/account_recovery_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final accountRecoveryNotifierProvider =
    StateNotifierProvider<AccountRecoveryNotifier, AccountRecoveryState>(
  (ref) => AccountRecoveryNotifier(
    ref.read(authFacadeProvider),
  ),
);
