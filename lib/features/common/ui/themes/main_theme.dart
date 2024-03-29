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
      systemOverlayStyle: SystemUiOverlayStyle.dark
          .copyWith(systemNavigationBarColor: Colors.black),
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
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.primaryRed,
      selectionHandleColor: AppColors.secondaryLightRed3,
      selectionColor: AppColors.secondaryLightRed3,
    ),
    textTheme: TextTheme(
        displayLarge: TextStyles.bold(
            color: AppColors.primaryRed, fontSize: FontSizes.s24.sp),
        displayMedium: TextStyles.bold(
            color: AppColors.primaryRed, fontSize: FontSizes.s22.sp),
        displaySmall:
            TextStyles.bold(color: AppColors.black, fontSize: FontSizes.s22.sp),
        bodyLarge:
            TextStyles.bold(color: AppColors.black, fontSize: FontSizes.s16.sp),
        bodyMedium: TextStyles.semiBold(
            color: AppColors.black, fontSize: FontSizes.s16.sp),
        labelLarge:
            TextStyles.bold(color: AppColors.white, fontSize: FontSizes.s18.sp),
        bodySmall: TextStyles.bold(
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
        elevation: Sizes.s0,
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
        foregroundColor: MaterialStateProperty.all(AppColors.primaryRed),
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
      hintStyle: TextStyles.regular(color: AppColors.darkGrey3),
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
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: AppColors.primaryRed,
    ),
  );

  final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.secondaryLightRed1,
    colorScheme: ColorScheme.dark(
      primary: AppColors.secondaryLightRed1,
      secondary:
          AppColors.secondaryLightRed2.withOpacity(OpacityConstants.op02),
    ),
    splashColor:
        AppColors.secondaryLightRed2.withOpacity(OpacityConstants.op02),
    highlightColor:
        AppColors.secondaryLightRed2.withOpacity(OpacityConstants.op02),
    fontFamily: FontConstants.fontFamily,
    scaffoldBackgroundColor: AppColors.darkGrey3,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle.light
          .copyWith(systemNavigationBarColor: AppColors.darkGrey3),
      backgroundColor: AppColors.darkGrey3,
      elevation: Sizes.elevationMain,
      shadowColor: AppColors.darkGrey3.withOpacity(OpacityConstants.op04),
      iconTheme: IconThemeData(
        color: AppColors.lightGrey1,
        size: Sizes.iconSizeSmall.w,
      ),
      titleTextStyle: TextStyles.bold(
          color: AppColors.secondaryLightRed1, fontSize: FontSizes.s24.sp),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.primaryRed,
      selectionHandleColor: AppColors.secondaryLightRed3,
      selectionColor: AppColors.secondaryLightRed3,
    ),
    textTheme: TextTheme(
        displayLarge: TextStyles.bold(
            color: AppColors.primaryRed, fontSize: FontSizes.s24.sp),
        displayMedium: TextStyles.bold(
            color: AppColors.primaryRed, fontSize: FontSizes.s22.sp),
        displaySmall:
            TextStyles.bold(color: AppColors.white, fontSize: FontSizes.s22.sp),
        bodyLarge:
            TextStyles.bold(color: AppColors.white, fontSize: FontSizes.s16.sp),
        bodyMedium: TextStyles.semiBold(
            color: AppColors.white, fontSize: FontSizes.s16.sp),
        labelLarge:
            TextStyles.bold(color: AppColors.black, fontSize: FontSizes.s18.sp),
        bodySmall: TextStyles.bold(
            color: AppColors.white, fontSize: FontSizes.s12.sp)),
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStateProperty.all(
        AppColors.secondaryLightRed1.withOpacity(OpacityConstants.op02),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: AppColors.primaryRed,
        disabledForegroundColor: AppColors.black,
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.primaryRed,
        elevation: Sizes.s0,
        textStyle: TextStyles.bold(color: AppColors.black),
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
        foregroundColor: MaterialStateProperty.all(AppColors.primaryRed),
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
      hintStyle: TextStyles.regular(color: AppColors.lightGrey2),
      filled: true,
      fillColor: AppColors.darkGrey1.withOpacity(OpacityConstants.op02),
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
          color: AppColors.white.withOpacity(OpacityConstants.op05),
          width: Sizes.focusedBorderWidth,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
        borderSide: BorderSide(
          color: AppColors.white.withOpacity(OpacityConstants.op02),
          width: Sizes.borderWidth,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
        borderSide: BorderSide(
          color: AppColors.white.withOpacity(OpacityConstants.op02),
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
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: AppColors.primaryRed,
    ),
  );
}
