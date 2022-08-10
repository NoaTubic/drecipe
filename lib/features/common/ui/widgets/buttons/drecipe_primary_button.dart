import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';

class DrecipePrimaryButton extends StatelessWidget {
  const DrecipePrimaryButton({
    Key? key,
    this.onPressed,
    required this.text,
    this.isDisabled = false,
  }) : super(key: key);

  final void Function()? onPressed;
  final String text;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: !isDisabled ? onPressed : null,
        style: !isDisabled
            ? null
            : ElevatedButton.styleFrom(
                primary: AppColors.lightGrey1,
                side: BorderSide(color: AppColors.lightGrey2),
              ),
        child: Text(text),
      ),
    );
  }
}
