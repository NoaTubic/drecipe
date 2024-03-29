import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/auth/domain/notifiers/registration/registration_notifier.dart';
import 'package:drecipe/features/auth/domain/notifiers/registration/registration_state.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_snack_bar.dart';

import 'package:flutter/material.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_button.dart';
import 'package:drecipe/features/common/ui/widgets/text_form_fields/drecipe_password_text_form_field.dart';
import 'package:drecipe/features/common/ui/widgets/text_form_fields/drecipe_text_form_field.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegistrationForm extends ConsumerWidget {
  const RegistrationForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<RegistrationState>(registrationNotifierProvider, (_, state) {
      state.registrationFailureOrSuccess.fold(
        () => null,
        (either) => either.fold(
          (failure) => showDrecipeSnackBar(
            context: context,
            text: failure.title,
          ),
          (success) => ScreenRouter.pushScreen(
            context,
            const EmailVerificationPageRoute(),
          ),
        ),
      );
    });
    final s = S.of(context);
    final registrationNotifier =
        ref.read(registrationNotifierProvider.notifier);
    final registrationState = ref.read(registrationNotifierProvider);
    final registrationStateListener = ref.watch(registrationNotifierProvider);
    return Form(
      autovalidateMode: registrationStateListener.showErrorMessages
          ? AutovalidateMode.always
          : AutovalidateMode.disabled,
      child: Column(
        children: [
          DrecipeTextFormField(
            onChanged: (username) =>
                registrationNotifier.onUsernameChanged(username),
            validator: (username) => registrationState.username.value.fold(
              (failure) => failure.getValueFailureMessage(),
              (_) => null,
            ),
            textInputType: TextInputType.name,
            hintText: s.registration_username_hint,
          ),
          DrecipeTextFormField(
            onChanged: (email) => registrationNotifier.onEmailChanged(email),
            validator: (username) => registrationState.email.value.fold(
              (failure) => failure.getValueFailureMessage(),
              (_) => null,
            ),
            textInputType: TextInputType.emailAddress,
            hintText: s.registration_email_hint,
          ),
          DrecipePasswordTextFormField(
            onChanged: (password) =>
                registrationNotifier.onPasswordChanged(password),
            validator: (username) => registrationState.password.value.fold(
              (failure) => failure.getValueFailureMessage(),
              (_) => null,
            ),
            hintText: s.registration_password_hint,
            textInputAction: TextInputAction.done,
          ),
          DrecipePasswordTextFormField(
            onChanged: (repeatedPassword) => registrationNotifier
                .onPasswordRepeatedChanged(repeatedPassword),
            validator: (username) =>
                registrationState.passwordRepeated.value.fold(
              (failure) => failure.getValueFailureMessage(),
              (_) => null,
            ),
            onEditingComplete: (_) async {
              FocusManager.instance.primaryFocus?.unfocus();
              await Future.delayed(
                  const Duration(milliseconds: DurationConstants.d040));
              registrationNotifier.register();
            },
            hintText: s.registration_password_confirm_hint,
            hasShowPasswordButton: false,
          ),
          const SizedBox(
            height: Sizes.s30,
          ),
          DrecipeButton(
            onPressed: () => registrationNotifier.register(),
            text: s.registration_sign_up_label,
            isLoading: registrationStateListener.isSubmitting,
          ),
        ],
      ),
    );
  }
}
