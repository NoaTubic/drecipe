import 'package:flutter/material.dart';

import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    Key? key,
    this.alignment = Alignment.center,
    this.withPadding = true,
  }) : super(key: key);

  final Alignment alignment;
  final bool withPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: withPadding ? Sizes.bodyHorizontalPadding : Sizes.s0),
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
          child: Padding(
            padding: const EdgeInsets.all(Sizes.s2),
            child: InkWell(
              onTap: () => ScreenRouter.pushScreen(
                context,
                const SettingsScreenRoute(),
              ),
              splashColor: AppColors.secondaryLightRed1
                  .withOpacity(OpacityConstants.op04),
              customBorder: const CircleBorder(),
              child: Icon(
                Icons.settings_rounded,
                size: Sizes.iconSizeMedium,
                color: AppColors.darkGrey1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
