import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_text_button_primary.dart';
import 'package:drecipe/features/common/ui/widgets/text_form_fields/drecipe_password_text_form_field.dart';
import 'package:drecipe/features/common/ui/widgets/text_form_fields/drecipe_text_form_field.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          DrecipeTextFormField(
            hintText: s.sign_in_email_hint,
            textInputType: TextInputType.emailAddress,
          ),
          DrecipePasswordTextFormField(
            hintText: s.sign_in_password_hint,
            textInputAction: TextInputAction.done,
          ),
          DrecipeTextButtonPrimary(
            onPressed: () {},
            text: s.sign_in_forgot_password,
            textColor: AppColors.black,
            alignment: Alignment.centerRight,
          ),
        ],
      ),
    );
  }
}
