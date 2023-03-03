import 'package:drecipe/features/auth/domain/notifiers/account_recovery_notifier.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_app_bar.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_scaffold.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_snack_bar.dart';
import 'package:drecipe/features/common/ui/widgets/text_button_row.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ResetPasswordPage extends ConsumerWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = S.of(context);
    return DrecipeScaffold(
      appBar: DrecipeAppBar(title: s.account_recovery_title),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: Sizes.s32,
            ),
            Text(s.account_recovery_confirm_subtitle),
            const SizedBox(
              height: Sizes.s40,
            ),
            Image.asset(ImageAssets.accountRecoveryEmail),
            const SizedBox(
              height: Sizes.s40,
            ),
            SizedBox(
              width: Sizes.s300,
              child: Text(
                s.account_recovery_confirm_helper,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: Sizes.s54,
            ),
            TextButtonRow(
              text: s.email_verification_resend_email,
              buttonText: s.email_verification_resend_email_btn,
              onPressed: () {
                ref
                    .read(accountRecoveryNotifierProvider.notifier)
                    .resetPassword()
                    .then(
                      (value) => showDrecipeSnackBar(
                          context: context,
                          text: s.email_verification_resent_email_info,
                          isError: false),
                    );
              },
            ),
          ],
        ),
      ),
    );
  }
}
