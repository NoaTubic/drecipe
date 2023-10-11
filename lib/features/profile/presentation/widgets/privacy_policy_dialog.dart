import 'package:auto_route/auto_route.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_text_button_primary.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_dialog.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:drecipe/features/common/ui/styles.dart';

class PrivacyPolicyDialog extends StatelessWidget {
  const PrivacyPolicyDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return DrecipeDialog(
      insetPadding:
          EdgeInsets.symmetric(vertical: Sizes.s300.h, horizontal: Sizes.s80.w),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Sizes.s12.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              s.profile_screen_privacy_policy,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.privacy_tip_rounded,
                  color: AppColors.primaryRed,
                ),
                SizedBox(
                  width: Sizes.s4.w,
                ),
                Text(S.current.profile_screen_privacy_policy_desc),
              ],
            ),
            DrecipeTextButtonPrimary(
              text: S.current.profile_screen_privacy_policy_close,
              onPressed: () => AutoRouter.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}
