import 'package:dartz/dartz.dart';
import 'package:drecipe/core/firebase/firebase_auth_facade.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/registration/domain/validation/registration_value_objects.dart';
import 'package:drecipe/features/sign_in/ui/state/sign_in_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInNotifier extends StateNotifier<SignInState> {
  final IFirebaseAuthFacade _authFacade;

  SignInNotifier(this._authFacade) : super(SignInState.initial());

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
    Either<AuthFailure, Unit>? signInResult;
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
    Either<AuthFailure, Unit>? signInResult;
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
