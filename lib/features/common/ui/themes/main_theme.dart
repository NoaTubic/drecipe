import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryRed,
    splashColor:
        AppColors.secondaryLightRed1.withOpacity(OpacityConstants.op02),
    highlightColor:
        AppColors.secondaryLightRed1.withOpacity(OpacityConstants.op02),
    fontFamily: FontConstants.fontFamily,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      backgroundColor: AppColors.white,
      elevation: Sizes.elevationMain,
      shadowColor: AppColors.lightGrey1.withOpacity(OpacityConstants.op04),
      iconTheme: IconThemeData(
        color: AppColors.primaryRed,
        size: Sizes.iconSizeSmall,
      ),
      titleTextStyle:
          TextStyles.bold(color: AppColors.primaryRed, fontSize: FontSizes.s24),
    ),
    textTheme: TextTheme(
      headline1:
          TextStyles.bold(color: AppColors.primaryRed, fontSize: FontSizes.s24),
      headline2:
          TextStyles.bold(color: AppColors.primaryRed, fontSize: FontSizes.s22),
      bodyText1:
          TextStyles.semiBold(color: AppColors.black, fontSize: FontSizes.s16),
      bodyText2:
          TextStyles.semiBold(color: AppColors.black, fontSize: FontSizes.s16),
      button: TextStyles.bold(color: AppColors.white, fontSize: FontSizes.s18),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        onPrimary: AppColors.white,
        primary: AppColors.primaryRed,
        elevation: Sizes.elevationMain,
        textStyle: TextStyles.bold(color: AppColors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.circularRadius),
          side: BorderSide(
            color: AppColors.primaryRed,
            width: Sizes.borderWidth,
          ),
        ),
        minimumSize: const Size.fromHeight(Sizes.elevatedButtonMinHeight),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(Size.zero),
        overlayColor: MaterialStateProperty.all(
          AppColors.secondaryLightRed1.withOpacity(OpacityConstants.op02),
        ),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.circularRadius),
        )),
        textStyle: MaterialStateProperty.all(
          TextStyles.bold(color: AppColors.primaryRed),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(Sizes.s18),
      hintStyle: TextStyles.regular(color: AppColors.darkGrey2),
      filled: true,
      fillColor: AppColors.lightGrey1.withOpacity(OpacityConstants.op02),
      isDense: true,
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.circularRadius),
        borderSide: BorderSide(
          color: AppColors.error,
          width: Sizes.focusedBorderWidth,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.circularRadius),
        borderSide: BorderSide(
          color: AppColors.black.withOpacity(OpacityConstants.op05),
          width: Sizes.focusedBorderWidth,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.circularRadius),
        borderSide: BorderSide(
          color: AppColors.black.withOpacity(OpacityConstants.op02),
          width: Sizes.borderWidth,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.circularRadius),
        borderSide: BorderSide(
          color: AppColors.black.withOpacity(OpacityConstants.op02),
          width: Sizes.borderWidth,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.circularRadius),
        borderSide: BorderSide(
          color: AppColors.error,
          width: Sizes.borderWidth,
        ),
      ),
    ),
  );
}
