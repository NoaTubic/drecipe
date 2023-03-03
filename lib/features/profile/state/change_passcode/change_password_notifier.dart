import 'package:dartz/dartz.dart';
import 'package:drecipe/features/auth/data/repositories/auth_repository.dart';
import 'package:drecipe/features/common/domain/entities/failure.dart';

import 'package:drecipe/features/profile/state/change_passcode/change_password_state.dart';
import 'package:drecipe/features/auth/domain/validation/registration_value_objects.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChangePasswordNotifier extends StateNotifier<ChangePasswordState> {
  final AuthRepository _authFacade;

  ChangePasswordNotifier(this._authFacade)
      : super(ChangePasswordState.initial());

  void onCurrentPasswordChanged(String password) {
    state = state.copyWith(
      currentPassword: PasswordValueObject(password),
    );
  }

  void onNewPasswordChanged(String password) {
    state = state.copyWith(
      newPassword: PasswordValueObject(password),
    );
  }

  Future<void> changePassword() async {
    Either<Failure, Unit>? changePasswordResult;
    final isCurrentPasswordValid = state.currentPassword.isValid();
    final isNewPasswordValid = state.newPassword.isValid();

    state = state.copyWith(
      isSubmitting: true,
      changePasswordSuccessOrFailure: none(),
    );

    if (isCurrentPasswordValid && isNewPasswordValid) {
      changePasswordResult = await _authFacade.changePassword(
        currentPassword: state.currentPassword.getOrCrash(),
        newPassword: state.newPassword.getOrCrash(),
      );

      state = state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        changePasswordSuccessOrFailure: optionOf(changePasswordResult),
      );

      state = state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        changePasswordSuccessOrFailure: none(),
      );
    }

    state = state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      changePasswordSuccessOrFailure: none(),
    );
  }
}
