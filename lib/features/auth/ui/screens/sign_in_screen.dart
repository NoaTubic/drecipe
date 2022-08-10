import 'package:drecipe/features/auth/ui/widgets/or_row.dart';
import 'package:drecipe/features/auth/ui/widgets/sign_in_form.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_text_button_primary.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/oauth_button.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/settings_button.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            Sizes.bodyHorizontalPadding,
            Sizes.bodyVerticalPadding,
            Sizes.bodyHorizontalPadding,
            Sizes.s0,
          ),
          child: SingleChildScrollView(
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
                const Text('Please sign in to your account'),
                const SizedBox(
                  height: Sizes.s20,
                ),
                const SignInForm(),
                const SizedBox(
                  height: Sizes.s20,
                ),
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
                  onPressed: () {},
                  text: 'Continue without signing in',
                  textColor: AppColors.black,
                ),
                const SizedBox(
                  height: Sizes.s16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?  '),
                    DrecipeTextButtonPrimary(
                      onPressed: () {},
                      text: 'Sign up',
                      textColor: AppColors.primaryRed,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
