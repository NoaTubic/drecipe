import 'package:dartz/dartz.dart';
import 'package:drecipe/features/auth/data/repositories/auth_repository.dart';
import 'package:drecipe/features/auth/domain/notifiers/registration/registration_state.dart';
import 'package:drecipe/features/common/domain/entities/failure.dart';
import 'package:drecipe/features/auth/domain/validation/registration_value_objects.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final registrationNotifierProvider =
    StateNotifierProvider<RegistrationNotifier, RegistrationState>(
  (ref) => RegistrationNotifier(
    ref.read(authRepositoryProvider),
  ),
);

class RegistrationNotifier extends StateNotifier<RegistrationState> {
  final AuthRepository _authFacade;

  RegistrationNotifier(this._authFacade) : super(RegistrationState.initial());

  void onUsernameChanged(String username) {
    state = state.copyWith(
      username: UsernameValueObject(username),
    );
  }

  void onEmailChanged(String email) {
    state = state.copyWith(
      email: EmailValueObject(email),
    );
  }

  void onPasswordChanged(String password) {
    state = state.copyWith(
      password: PasswordValueObject(password),
    );
  }

  void onPasswordRepeatedChanged(String passwordRepeated) {
    state = state.copyWith(
      passwordRepeated: PasswordValueObject.withCheck(
          state.password.getOrCrash(), passwordRepeated),
    );
  }

  Future<void> register() async {
    Either<Failure, Unit>? registrationResult;
    final isUsernameValid = state.email.isValid();
    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();
    final isPasswordRepeatedValid = state.passwordRepeated.isValid();

    if (isUsernameValid &&
        isEmailValid &&
        isPasswordValid &&
        isPasswordRepeatedValid) {
      state = state.copyWith(
        isSubmitting: true,
        registrationFailureOrSuccess: none(),
      );

      registrationResult = await _authFacade.register(
        email: state.email.getOrCrash(),
        password: state.password.getOrCrash(),
        username: state.username.getOrCrash(),
      );

      await _authFacade.verifyEmail();
    }

    state = state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        registrationFailureOrSuccess: optionOf(registrationResult));
  }

  Future<void> verifyEmail() async {
    await _authFacade.verifyEmail();
  }
}
