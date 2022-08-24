import 'package:dartz/dartz.dart';
import 'package:drecipe/core/firebase/firebase_auth_facade.dart';
import 'package:drecipe/features/account_recovery/ui/state/account_recovery_state.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/registration/domain/validation/registration_value_objects.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountRecoveryNotifier extends StateNotifier<AccountRecoveryState> {
  final IFirebaseAuthFacade _authFacade;

  AccountRecoveryNotifier(this._authFacade)
      : super(AccountRecoveryState.initial());

  void onEmailChanged(String email) {
    state = state.copyWith(
      email: EmailValueObject(email),
    );
  }

  Future<void> resetPassword() async {
    Either<AuthFailure, Unit>? recoveryResult;
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
