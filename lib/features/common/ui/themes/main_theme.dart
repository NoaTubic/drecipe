import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryRed,
    splashColor: AppColors.secondaryLightRed1,
    highlightColor: AppColors.secondaryLightRed1,
    fontFamily: FontConstants.fontFamily,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.white,
      elevation: Sizes.elevationMain,
    ),
    textTheme: TextTheme(
      headline1:
          TextStyles.bold(color: AppColors.primaryRed, fontSize: FontSizes.s24),
      headline2:
          TextStyles.bold(color: AppColors.primaryRed, fontSize: FontSizes.s22),
      bodyText1:
          TextStyles.medium(color: AppColors.black, fontSize: FontSizes.s16),
      bodyText2:
          TextStyles.semiBold(color: AppColors.black, fontSize: FontSizes.s14),
      button: TextStyles.bold(color: AppColors.white, fontSize: FontSizes.s18),
    ),
  );
}
