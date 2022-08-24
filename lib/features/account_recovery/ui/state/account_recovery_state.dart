import 'package:dartz/dartz.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/registration/domain/validation/registration_value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_recovery_state.freezed.dart';

@freezed
class AccountRecoveryState with _$AccountRecoveryState {
  const factory AccountRecoveryState({
    required EmailValueObject email,
    required bool isSubmitting,
    required bool showFailureMessages,
    required Option<Either<AuthFailure, Unit>> recoverySuccessOrFailure,
  }) = _AccountRecoveryState;

  factory AccountRecoveryState.initial() => AccountRecoveryState(
        email: EmailValueObject(''),
        isSubmitting: false,
        showFailureMessages: false,
        recoverySuccessOrFailure: none(),
      );
}
