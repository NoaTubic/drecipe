import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Ink(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.secondaryLightRed1.withOpacity(OpacityConstants.op02),
              AppColors.lightGrey1.withOpacity(OpacityConstants.op03)
            ],
          ),
        ),
        child: InkWell(
          onTap: () => ScreenRouter.pushScreen(
            context,
            const SettingsScreenRoute(),
          ),
          splashColor:
              AppColors.secondaryLightRed1.withOpacity(OpacityConstants.op04),
          customBorder: const CircleBorder(),
          child: Icon(
            Icons.settings_rounded,
            size: Sizes.iconSizes,
            color: AppColors.darkGrey1,
          ),
        ),
      ),
    );
  }
}
