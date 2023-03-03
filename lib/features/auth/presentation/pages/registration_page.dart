import 'package:drecipe/features/common/ui/widgets/drecipe_app_bar.dart';
import 'package:drecipe/features/auth/presentation/widgets/registration_form.dart';
import 'package:flutter/material.dart';
import 'package:drecipe/features/common/ui/widgets/text_button_row.dart';
import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_logo_label.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_scaffold.dart';
import 'package:drecipe/generated/l10n.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return DrecipeScaffold(
      appBar: DrecipeAppBar(
        title: s.registration_title,
        leftAction: () =>
            ScreenRouter.popScreen(context, const SignInPageRoute()),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: HeroConstants.logo,
                    child: Image.asset(
                      ImageAssets.drecipeLogoNoText,
                      width: Sizes.s60,
                    ),
                  ),
                  const SizedBox(
                    width: Sizes.s8,
                  ),
                  Text(s.registration_subtitle),
                  const DrecipeLogoLabel(),
                  const Text('!'),
                ],
              ),
              const SizedBox(
                height: Sizes.s36,
              ),
              Text(s.registration_helper),
              const SizedBox(
                height: Sizes.s36,
              ),
              const RegistrationForm(),
              TextButtonRow(
                text: s.registration_have_an_account,
                buttonText: s.sign_in_label,
                onPressed: () => ScreenRouter.pushScreen(
                  context,
                  const SignInPageRoute(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
