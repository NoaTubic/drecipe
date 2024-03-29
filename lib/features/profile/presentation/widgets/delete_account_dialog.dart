import 'package:auto_route/auto_route.dart';
import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/auth/domain/notifiers/auth/auth_notifier.dart';
import 'package:drecipe/features/auth/domain/notifiers/sign_in/sign_in_notifier.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_dialog.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_button.dart';

class DeleteAccountDialog extends ConsumerWidget {
  const DeleteAccountDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DrecipeDialog(
      insetPadding:
          EdgeInsets.symmetric(vertical: Sizes.s260.h, horizontal: Sizes.s40.w),
      child: Padding(
        padding: const EdgeInsets.all(Sizes.bodyHorizontalPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.current.profile_screen_delete_account_helper,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: Sizes.s40.h,
            ),
            DrecipeButton(
              text: S.current.profile_screen_delete_account_delete,
              onPressed: () {
                ref.read(authNotifierProvider.notifier).deleteAccount().then(
                  (_) {
                    ref.read(signInNotifierProvider.notifier).reset();
                    return AutoRouter.of(context).replace(
                      const SignInPageRoute(),
                    );
                  },
                );
              },
            ),
            SizedBox(
              height: Sizes.s24.h,
            ),
            DrecipeButton(
                secondary: true,
                text: S.current.label_cancel,
                onPressed: () => Navigator.pop(context))
          ],
        ),
      ),
    );
  }
}
