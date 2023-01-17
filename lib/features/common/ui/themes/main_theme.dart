import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryRed,
    colorScheme: ColorScheme.fromSwatch(
      accentColor:
          AppColors.secondaryLightRed1.withOpacity(OpacityConstants.op02),
    ),
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
        color: AppColors.darkGrey1,
        size: Sizes.iconSizeSmall.w,
      ),
      titleTextStyle: TextStyles.bold(
          color: AppColors.primaryRed, fontSize: FontSizes.s24.sp),
    ),
    textTheme: TextTheme(
        headline1: TextStyles.bold(
            color: AppColors.primaryRed, fontSize: FontSizes.s24.sp),
        headline2: TextStyles.bold(
            color: AppColors.primaryRed, fontSize: FontSizes.s22.sp),
        headline3:
            TextStyles.bold(color: AppColors.black, fontSize: FontSizes.s22.sp),
        bodyText1:
            TextStyles.bold(color: AppColors.black, fontSize: FontSizes.s16.sp),
        bodyText2: TextStyles.semiBold(
            color: AppColors.black, fontSize: FontSizes.s16.sp),
        button:
            TextStyles.bold(color: AppColors.white, fontSize: FontSizes.s18.sp),
        caption: TextStyles.bold(
            color: AppColors.black, fontSize: FontSizes.s12.sp)),
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStateProperty.all(
        AppColors.secondaryLightRed1.withOpacity(OpacityConstants.op02),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: AppColors.primaryRed,
        disabledForegroundColor: AppColors.white,
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primaryRed,
        elevation: Sizes.elevationMain,
        textStyle: TextStyles.bold(color: AppColors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
          side: BorderSide(
            color: AppColors.primaryRed,
            width: Sizes.borderWidth,
          ),
        ),
        minimumSize: Size.fromHeight(Sizes.elevatedButtonMinHeight.h),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.all(Sizes.s4.w)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(Size.zero),
        overlayColor: MaterialStateProperty.all(
          AppColors.secondaryLightRed1.withOpacity(OpacityConstants.op02),
        ),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
        )),
        textStyle: MaterialStateProperty.all(
          TextStyles.bold(color: AppColors.primaryRed),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(Sizes.s18.w),
      hintStyle: TextStyles.regular(color: AppColors.darkGrey2),
      filled: true,
      fillColor: AppColors.lightGrey1.withOpacity(OpacityConstants.op02),
      isDense: true,
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
        borderSide: BorderSide(
          color: AppColors.error,
          width: Sizes.focusedBorderWidth,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
        borderSide: BorderSide(
          color: AppColors.black.withOpacity(OpacityConstants.op05),
          width: Sizes.focusedBorderWidth,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
        borderSide: BorderSide(
          color: AppColors.black.withOpacity(OpacityConstants.op02),
          width: Sizes.borderWidth,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
        borderSide: BorderSide(
          color: AppColors.black.withOpacity(OpacityConstants.op02),
          width: Sizes.borderWidth,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
        borderSide: BorderSide(
          color: AppColors.error,
          width: Sizes.borderWidth,
        ),
      ),
    ),
  );
}
