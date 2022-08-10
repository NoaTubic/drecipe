import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_primary_button.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_text_button_primary.dart';
import 'package:drecipe/features/common/ui/widgets/text_form_fields/drecipe_password_text_form_field.dart';
import 'package:drecipe/features/common/ui/widgets/text_form_fields/drecipe_text_form_field.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          const DrecipeTextFormField(
            hintText: 'Email',
            textInputType: TextInputType.emailAddress,
          ),
          const DrecipePasswordTextFormField(hintText: 'Password'),
          DrecipeTextButtonPrimary(
            onPressed: () {},
            text: 'Forgot password?',
            textColor: AppColors.black,
            alignment: Alignment.centerRight,
          ),
          const SizedBox(
            height: Sizes.s28,
          ),
          DrecipePrimaryButton(
            onPressed: () {},
            text: 'Sign in',
          ),
        ],
      ),
    );
  }
}
