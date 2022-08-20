import 'package:dartz/dartz.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/registration/domain/validation/registration_value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_state.freezed.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    required UsernameValueObject username,
    required EmailValueObject email,
    required PasswordValueObject password,
    required PasswordValueObject passwordRepeated,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> registrationFailureOrSuccess,
  }) = _RegistrationState;

  factory RegistrationState.initial() => RegistrationState(
        username: UsernameValueObject(''),
        email: EmailValueObject(''),
        password: PasswordValueObject(''),
        passwordRepeated: PasswordValueObject(''),
        isSubmitting: false,
        showErrorMessages: false,
        registrationFailureOrSuccess: none(),
      );
}
