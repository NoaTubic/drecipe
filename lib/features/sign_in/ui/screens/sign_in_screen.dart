import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_scaffold.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_snack_bar.dart';
import 'package:drecipe/features/common/ui/widgets/text_button_row.dart';
import 'package:drecipe/features/sign_in/di/providers.dart';
import 'package:drecipe/features/sign_in/ui/state/sign_in_state.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_text_button_primary.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/oauth_button.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/settings_button.dart';
import 'package:drecipe/features/sign_in/ui/widgets/or_row.dart';
import 'package:drecipe/features/sign_in/ui/widgets/sign_in_form.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInScreen extends ConsumerWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<SignInState>(signInNotifierProvider, (_, state) {
      state.signInFailureOrSuccess.fold(
        () => null,
        (either) => either.fold(
          (failure) => showDrecipeSnackBar(
            context: context,
            text: failure.getAuthFailureMessage(),
          ),
          (success) => ScreenRouter.pushScreen(
            context,
            const ExploreRecipesScreenRoute(),
          ),
        ),
      );
    });
    final s = S.of(context);
    final signInNotifier = ref.read(signInNotifierProvider.notifier);
    return DrecipeScaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Center(
                  child: Hero(
                    tag: HeroConstants.logo,
                    child: Image.asset(
                      ImageAssets.drecipeLogo,
                      width: Sizes.s228,
                    ),
                  ),
                ),
                const SettingsButton()
              ],
            ),
            const SizedBox(
              height: Sizes.s2,
            ),
            Text(s.sign_in_helper),
            const SizedBox(
              height: Sizes.s20,
            ),
            const SignInForm(),
            const OrRow(),
            const SizedBox(
              height: Sizes.s20,
            ),
            Row(
              children: [
                OAuthButton(
                  onPressed: () {},
                  color: AppColors.googleButton,
                  iconUrl: ImageAssets.icGoogle,
                  iconSize: Sizes.s54,
                ),
                const SizedBox(
                  width: Sizes.s40,
                ),
                OAuthButton(
                  onPressed: () {},
                  color: AppColors.black,
                  iconUrl: ImageAssets.icApple,
                  iconSize: Sizes.s40,
                ),
              ],
            ),
            const SizedBox(
              height: Sizes.s24,
            ),
            DrecipeTextButtonPrimary(
              onPressed: () => signInNotifier.signInAnonymously(),
              text: s.sign_in_anonymous,
              textColor: AppColors.black,
            ),
            const SizedBox(
              height: Sizes.s16,
            ),
            TextButtonRow(
              text: s.sign_in_register,
              buttonText: s.registration_sign_up_label,
              onPressed: () => ScreenRouter.pushScreen(
                context,
                const RegistrationScreenRoute(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
