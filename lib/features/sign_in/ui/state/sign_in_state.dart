import 'package:dartz/dartz.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/registration/domain/validation/registration_value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required EmailValueObject email,
    required PasswordValueObject password,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> signInFailureOrSuccess,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        email: EmailValueObject(''),
        password: PasswordValueObject(''),
        isSubmitting: false,
        showErrorMessages: false,
        signInFailureOrSuccess: none(),
      );
}
