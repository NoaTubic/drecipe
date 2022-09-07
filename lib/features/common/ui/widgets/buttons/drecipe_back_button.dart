import 'package:auto_route/auto_route.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';

class DrecipeBackButton extends StatelessWidget {
  const DrecipeBackButton({
    Key? key,
    this.onTap,
    this.alignment = Alignment.topLeft,
    this.withPadding = true,
  }) : super(key: key);

  final void Function()? onTap;
  final Alignment alignment;
  final bool withPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: withPadding
          ? const EdgeInsets.only(
              left: Sizes.bodyHorizontalPadding, top: Sizes.bodyVerticalPadding)
          : EdgeInsets.zero,
      child: Align(
        alignment: alignment,
        child: Ink(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(Sizes.s8),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.secondaryLightRed1.withOpacity(OpacityConstants.op04),
                AppColors.lightGrey1.withOpacity(OpacityConstants.op04)
              ],
            ),
          ),
          child: InkWell(
            onTap: onTap ?? () => AutoRouter.of(context).pop(),
            splashColor:
                AppColors.secondaryLightRed1.withOpacity(OpacityConstants.op04),
            customBorder: const CircleBorder(),
            child: Icon(
              Icons.arrow_back_rounded,
              size: Sizes.iconSizeMedium,
              color: AppColors.darkGrey1,
            ),
          ),
        ),
      ),
    );
  }
}
