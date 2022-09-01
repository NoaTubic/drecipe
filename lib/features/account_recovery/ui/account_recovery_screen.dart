import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/account_recovery/di/providers.dart';
import 'package:drecipe/features/account_recovery/ui/state/account_recovery_state.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_primary_button.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_app_bar.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_scaffold.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_snack_bar.dart';
import 'package:drecipe/features/common/ui/widgets/loading_indicators/drecipe_linear_progress_indicator.dart';
import 'package:drecipe/features/common/ui/widgets/text_form_fields/drecipe_text_form_field.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountRecoveryScreen extends ConsumerWidget {
  const AccountRecoveryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AccountRecoveryState>(accountRecoveryNotifierProvider,
        (_, state) {
      state.recoverySuccessOrFailure.fold(
        () => null,
        (either) => either.fold(
          (failure) => showDrecipeSnackBar(
            context: context,
            text: failure.getAuthFailureMessage(),
          ),
          (success) => ScreenRouter.pushScreen(
            context,
            const AccountRecoveryResetEmailScreenRoute(),
          ),
        ),
      );
    });
    final accountRecoveryNotifier =
        ref.read(accountRecoveryNotifierProvider.notifier);
    final accountRecoveryState = ref.read(accountRecoveryNotifierProvider);
    final accountRecoveryStateListener =
        ref.watch(accountRecoveryNotifierProvider);
    final s = S.of(context);
    return DrecipeScaffold(
      appBar: DrecipeAppBar(title: s.account_recovery_title),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: Sizes.s32,
            ),
            Text(s.account_recovery_subtitle),
            const SizedBox(
              height: Sizes.s40,
            ),
            Hero(
                tag: HeroConstants.logo,
                child: Image.asset(ImageAssets.accountRecovery)),
            const SizedBox(
              height: Sizes.s40,
            ),
            Text(
              s.account_recovery_helper,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: Sizes.s40,
            ),
            Form(
              autovalidateMode: accountRecoveryStateListener.showFailureMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Column(
                children: [
                  DrecipeTextFormField(
                    onChanged: (email) =>
                        accountRecoveryNotifier.onEmailChanged(email),
                    validator: (email) => accountRecoveryState.email.value.fold(
                      (failure) => failure.getValueFailureMessage(),
                      (_) => null,
                    ),
                    textInputType: TextInputType.emailAddress,
                    hintText: s.registration_email_hint,
                  ),
                  DrecipePrimaryButton(
                    onPressed: () => accountRecoveryNotifier.resetPassword(),
                    text: s.account_recovery_reset,
                  ),
                  accountRecoveryStateListener.isSubmitting
                      ? const DrecipeLinearProgressIndicator()
                      : Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
