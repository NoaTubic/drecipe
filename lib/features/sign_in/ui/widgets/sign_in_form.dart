import 'package:auto_route/auto_route.dart';
import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_button.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_text_button_primary.dart';
import 'package:drecipe/features/common/ui/widgets/text_form_fields/drecipe_password_text_form_field.dart';
import 'package:drecipe/features/common/ui/widgets/text_form_fields/drecipe_text_form_field.dart';
import 'package:drecipe/features/sign_in/di/providers.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInForm extends ConsumerWidget {
  const SignInForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = S.of(context);
    final signInNotifier = ref.read(signInNotifierProvider.notifier);
    final signInState = ref.read(signInNotifierProvider);
    final signInStateListener = ref.watch(signInNotifierProvider);
    return Form(
      autovalidateMode: signInStateListener.showErrorMessages
          ? AutovalidateMode.always
          : AutovalidateMode.disabled,
      child: Column(
        children: [
          DrecipeTextFormField(
            onChanged: (email) => signInNotifier.onEmailChanged(email),
            validator: (email) => signInState.email.value.fold(
              (failure) => failure.getValueFailureMessage(),
              (_) => null,
            ),
            hintText: s.sign_in_email_hint,
            textInputType: TextInputType.emailAddress,
          ),
          DrecipePasswordTextFormField(
            onChanged: (password) => signInNotifier.onPasswordChanged(password),
            validator: (password) => signInState.password.value.fold(
              (failure) => failure.getValueFailureMessage(),
              (_) => null,
            ),
            hintText: s.sign_in_password_hint,
            textInputAction: TextInputAction.done,
          ),
          DrecipeTextButtonPrimary(
            onPressed: () =>
                AutoRouter.of(context).push(const AccountRecoveryScreenRoute()),
            text: s.sign_in_forgot_password,
            textColor: AppColors.black,
            alignment: Alignment.centerRight,
          ),
          const SizedBox(
            height: Sizes.s20,
          ),
          DrecipeButton(
            onPressed: () {
              signInNotifier.signInWithEmailAndPassword();
            },
            text: s.sign_in_label,
            isLoading: signInStateListener.isSubmitting,
          ),
          const SizedBox(
            height: Sizes.s28,
          ),
        ],
      ),
    );
  }
}
