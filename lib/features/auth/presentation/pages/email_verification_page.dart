import 'package:drecipe/features/auth/domain/notifiers/registration/registration_notifier.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_app_bar.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_logo_label.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_scaffold.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_snack_bar.dart';
import 'package:drecipe/features/common/ui/widgets/text_button_row.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailVerificationPage extends ConsumerWidget {
  const EmailVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = S.of(context);
    return DrecipeScaffold(
      appBar: DrecipeAppBar(
        title: s.email_verification_title,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(s.email_verification_subtitle),
              const DrecipeLogoLabel(),
              const Text('.'),
            ],
          ),
          const SizedBox(
            height: Sizes.s40,
          ),
          Image.asset(
            ImageAssets.verifyEmail,
            width: Sizes.s140.w,
            height: Sizes.s140.h,
          ),
          const SizedBox(
            height: Sizes.s40,
          ),
          Text(
            s.email_verification_helper,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: Sizes.s60,
          ),
          TextButtonRow(
            text: s.email_verification_resend_email,
            buttonText: s.email_verification_resend_email_btn,
            onPressed: () {
              ref
                  .read(registrationNotifierProvider.notifier)
                  .verifyEmail()
                  .then(
                    ((value) => showDrecipeSnackBar(
                          context: context,
                          text: s.email_verification_resent_email_info,
                          isError: false,
                        )),
                  );
            },
          )
        ],
      ),
    );
  }
}