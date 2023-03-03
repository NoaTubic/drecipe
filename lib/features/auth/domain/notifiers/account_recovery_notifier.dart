import 'package:dartz/dartz.dart';
import 'package:drecipe/features/auth/data/repositories/auth_repository.dart';

import 'package:drecipe/features/auth/domain/state/account_recovery_state.dart';
import 'package:drecipe/features/common/domain/entities/failure.dart';
import 'package:drecipe/features/auth/domain/validation/registration_value_objects.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final accountRecoveryNotifierProvider =
    StateNotifierProvider<AccountRecoveryNotifier, AccountRecoveryState>(
  (ref) => AccountRecoveryNotifier(
    ref.read(authRepositoryProvider),
  ),
);

class AccountRecoveryNotifier extends StateNotifier<AccountRecoveryState> {
  AccountRecoveryNotifier(this._authFacade)
      : super(AccountRecoveryState.initial());

  final AuthRepository _authFacade;

  void onEmailChanged(String email) {
    state = state.copyWith(
      email: EmailValueObject(email),
    );
  }

  Future<void> resetPassword() async {
    Either<Failure, Unit>? recoveryResult;
    final isEmailValid = state.email.isValid();

    if (isEmailValid) {
      state = state.copyWith(
        isSubmitting: true,
        showFailureMessages: false,
        recoverySuccessOrFailure: none(),
      );

      recoveryResult =
          await _authFacade.resetPassword(email: state.email.getOrCrash());
    }

    state = state.copyWith(
      isSubmitting: false,
      showFailureMessages: true,
      recoverySuccessOrFailure: optionOf(recoveryResult),
    );

    state = state.copyWith(
      recoverySuccessOrFailure: none(),
    );
  }
}
