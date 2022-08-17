import 'package:drecipe/features/common/ui/widgets/text_button_row.dart';
import 'package:flutter/material.dart';

import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_primary_button.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_logo_label.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_scaffold.dart';
import 'package:drecipe/features/common/ui/widgets/text_form_fields/drecipe_password_text_form_field.dart';
import 'package:drecipe/features/common/ui/widgets/text_form_fields/drecipe_text_form_field.dart';
import 'package:drecipe/generated/l10n.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return DrecipeScaffold(
      appBar: AppBar(
        title: Text(
          s.registration_title,
        ),
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
              DrecipeTextFormField(
                textInputType: TextInputType.name,
                hintText: s.registration_username_hint,
              ),
              DrecipeTextFormField(
                textInputType: TextInputType.emailAddress,
                hintText: s.registration_email_hint,
              ),
              DrecipePasswordTextFormField(
                hintText: s.registration_password_hint,
              ),
              DrecipePasswordTextFormField(
                hintText: s.registration_password_confirm_hint,
                hasShowPasswordButton: false,
              ),
              const SizedBox(
                height: Sizes.s20,
              ),
              DrecipePrimaryButton(
                onPressed: () => ScreenRouter.replaceScreen(
                    context, const EmailVerificationScreenRoute()),
                text: s.registration_sign_up_label,
              ),
              const SizedBox(
                height: Sizes.s54,
              ),
              TextButtonRow(
                text: s.registration_have_an_account,
                buttonText: s.sign_in_label,
                onPressed: () =>
                    ScreenRouter.pushScreen(context, const SignInScreenRoute()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
