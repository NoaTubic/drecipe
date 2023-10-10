import 'package:auto_route/auto_route.dart';
import 'package:drecipe/core/providers/providers.dart';
import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/auth/domain/notifiers/auth/auth_notifier.dart';
import 'package:drecipe/features/auth/domain/notifiers/sign_in/sign_in_notifier.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_dialog.dart';
import 'package:drecipe/features/profile/ui/widgets/change_language_dropdown_button.dart';
import 'package:drecipe/features/profile/ui/widgets/change_password_dialog.dart';
import 'package:drecipe/features/profile/ui/widgets/delete_account_dialog.dart';
import 'package:drecipe/features/profile/ui/widgets/privacy_policy_dialog.dart';
import 'package:drecipe/features/profile/ui/widgets/profile_tile.dart';
import 'package:drecipe/features/profile/ui/widgets/theme_mode_switch.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_button.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_app_bar.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_scaffold.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = S.of(context);
    return DrecipeScaffold(
      padding: EdgeInsets.zero,
      appBar: DrecipeAppBar(
        title: s.profile_screen_title,
        backButton: false,
        settings: false,
        elevated: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileTile(
            text: s.profile_screen_email,
            child: Text(
                ref.read(firebaseAuthProvider).currentUser!.email ??
                    'email@email.com',
                style: Theme.of(context)
                    .textTheme
                    // ignore: deprecated_member_use
                    .bodyText1),
          ),
          const ThemeModeSwitch(),
          const ChangeLanguageDropdownButton(),
          InkWell(
            onTap: () => showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => const ChangePasswordDialog(),
            ),
            child: ProfileTile(
              text: s.profile_screen_change_password,
              child: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          InkWell(
            onTap: () => showDialog(
              context: context,
              builder: (context) => const PrivacyPolicyDialog(),
            ),
            child: ProfileTile(
              text: s.profile_screen_change_privacy_policy,
              child: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
          SizedBox(
            height: Sizes.s40.h,
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: Sizes.bodyHorizontalPadding.w),
            child: DrecipeButton(
              onPressed: () =>
                  ref.read(authNotifierProvider.notifier).signOut().then(
                (_) {
                  ref.read(signInNotifierProvider.notifier).reset();
                  return AutoRouter.of(context).replace(
                    const SignInPageRoute(),
                  );
                },
              ),
              text: s.profile_screen_sign_out,
            ),
          ),
          SizedBox(
            height: Sizes.s12.h,
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: Sizes.bodyHorizontalPadding.w),
            child: DrecipeButton(
              onPressed: () => showDialog(
                context: context,
                builder: (context) => const DeleteAccountDialog(),
              ),
              text: s.profile_screen_delete_account,
              secondary: true,
            ),
          ),
        ],
      ),
    );
  }
}
