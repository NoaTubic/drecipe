import 'package:dartz/dartz.dart';
import 'package:drecipe/features/auth/data/repositories/auth_repository.dart';
import 'package:drecipe/features/common/domain/entities/failure.dart';

import 'package:drecipe/features/auth/domain/validation/registration_value_objects.dart';
import 'package:drecipe/features/auth/domain/notifiers/sign_in/sign_in_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signInNotifierProvider =
    StateNotifierProvider<SignInNotifier, SignInState>(
  (ref) => SignInNotifier(
    ref.read(authRepositoryProvider),
  ),
);

class SignInNotifier extends StateNotifier<SignInState> {
  SignInNotifier(this._authFacade) : super(SignInState.initial());

  final AuthRepository _authFacade;

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

  Future<void> signInAnonymously() async {
    Either<Failure, Unit>? signInResult;
    state = state.copyWith(
      isSubmitting: true,
      signInFailureOrSuccess: none(),
    );

    signInResult = await _authFacade.signInAnonymously();

    state = state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      signInFailureOrSuccess: optionOf(signInResult),
    );
  }

  Future<void> signInWithEmailAndPassword() async {
    Either<Failure, Unit>? signInResult;
    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.email.isValid();

    if (isEmailValid && isPasswordValid) {
      state = state.copyWith(
        isSubmitting: true,
        signInFailureOrSuccess: none(),
      );

      signInResult = await _authFacade.signInWithEmailAndPassword(
        email: state.email.getOrCrash(),
        password: state.password.getOrCrash(),
      );
    }
    state = state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      signInFailureOrSuccess: optionOf(signInResult),
    );

    state = state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      signInFailureOrSuccess: none(),
    );
  }
}
