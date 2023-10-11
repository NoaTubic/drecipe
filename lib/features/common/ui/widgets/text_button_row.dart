import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_text_button_primary.dart';
import 'package:flutter/material.dart';

class TextButtonRow extends StatelessWidget {
  const TextButtonRow({
    Key? key,
    required this.text,
    required this.buttonText,
    this.onPressed,
  }) : super(key: key);

  final String text;
  final String buttonText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        DrecipeTextButtonPrimary(
          onPressed: onPressed,
          text: buttonText,
          textColor: AppColors.primaryRed,
        ),
      ],
    );
  }
}
