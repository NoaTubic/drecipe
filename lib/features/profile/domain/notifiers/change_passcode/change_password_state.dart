import 'package:dartz/dartz.dart';
import 'package:drecipe/features/common/domain/entities/failure.dart';
import 'package:drecipe/features/auth/domain/validation/registration_value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_state.freezed.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    required PasswordValueObject currentPassword,
    required PasswordValueObject newPassword,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<Failure, Unit>> changePasswordSuccessOrFailure,
  }) = _ChangePasswordState;

  factory ChangePasswordState.initial() => ChangePasswordState(
        currentPassword: PasswordValueObject(''),
        newPassword: PasswordValueObject(''),
        isSubmitting: false,
        showErrorMessages: false,
        changePasswordSuccessOrFailure: none(),
      );
}
