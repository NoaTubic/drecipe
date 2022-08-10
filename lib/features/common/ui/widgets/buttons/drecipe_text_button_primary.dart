import 'package:flutter/material.dart';

import 'package:drecipe/features/common/ui/styles.dart';

class DrecipeTextButtonPrimary extends StatelessWidget {
  const DrecipeTextButtonPrimary({
    Key? key,
    required this.text,
    this.onPressed,
    this.textColor = Colors.black,
    this.alignment = Alignment.center,
  }) : super(key: key);

  final String text;
  final void Function()? onPressed;
  final Color? textColor;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.button!.copyWith(
                color: textColor,
                fontSize: FontSizes.s16,
              ),
        ),
      ),
    );
  }
}
