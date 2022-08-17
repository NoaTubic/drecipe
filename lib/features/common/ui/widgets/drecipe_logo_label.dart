import 'package:drecipe/features/common/ui/colors/colors.dart';
import 'package:flutter/material.dart';

class DrecipeLogoLabel extends StatelessWidget {
  const DrecipeLogoLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'd',
          style: Theme.of(context)
              .textTheme
              .button!
              .copyWith(color: AppColors.primaryRed),
        ),
        Text(
          'recipe',
          style: Theme.of(context)
              .textTheme
              .button!
              .copyWith(color: AppColors.black),
        ),
      ],
    );
  }
}
