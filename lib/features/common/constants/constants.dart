import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';

abstract class Constants {
  static const int minPasswordLength = 6;
  static const int maxUsernameLength = 20;
  static const int numberOfRecipes = 10;
  static const String randomRecipes = 'random';
  static const String popularRecipes = 'popularity';
  static const String healthyRecipes = 'healthiness';
  static const String mealTimeBreakfast = 'breakfast';
  static const String mealTimeLunch = 'lunch';
  static const String mealTimeSnack = 'snack';
  static const String mealTimeDinner = 'dinner';
  static const String mealTimeBed = 'bed';
}

abstract class HeroConstants {
  static const String logo = 'logo';
  static const String discoverImage = 'hero';
  static const String favoritesImage = 'favorites';
  static const String searchImage = 'search';
}

abstract class DurationConstants {
  static const int d093 = 930;
  static const int d040 = 400;
  static const int d1 = 1;
  static const int d2 = 2;
  static const int d3 = 3;
}

abstract class OpacityConstants {
  static const double op01 = 0.1;
  static const double op02 = 0.2;
  static const double op03 = 0.3;
  static const double op04 = 0.4;
  static const double op05 = 0.5;
  static const double op06 = 0.6;
  static const double op07 = 0.7;
  static const double op08 = 0.8;
  static const double op09 = 0.9;
}

abstract class RegexConstants {
  static const String email =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  static const String name = r"""^[a-zA-Z0-9.]+""";
}

List<BoxShadow> shadows = [
  BoxShadow(
    color: AppColors.black.withOpacity(OpacityConstants.op02),
    spreadRadius: -Sizes.s8,
    blurRadius: Sizes.s8,
    offset: const Offset(Sizes.s0, Sizes.s4),
  ),
  BoxShadow(
    color: AppColors.black.withOpacity(OpacityConstants.op02),
    spreadRadius: -Sizes.s8,
    blurRadius: Sizes.s8,
    offset: const Offset(Sizes.s4, -Sizes.s0),
  ),
  BoxShadow(
    color: AppColors.black.withOpacity(OpacityConstants.op02),
    spreadRadius: -Sizes.s8,
    blurRadius: Sizes.s8,
    offset: const Offset(-Sizes.s4, -Sizes.s0),
  )
];

List<BoxShadow> shadowsLight = [
  BoxShadow(
    color: AppColors.black.withOpacity(OpacityConstants.op04),
    spreadRadius: -Sizes.s8,
    blurRadius: Sizes.s8,
    offset: const Offset(Sizes.s0, Sizes.s8),
  ),
  BoxShadow(
    color: AppColors.black.withOpacity(OpacityConstants.op04),
    spreadRadius: -Sizes.s8,
    blurRadius: Sizes.s8,
    offset: const Offset(Sizes.s8, -Sizes.s0),
  ),
  BoxShadow(
    color: AppColors.black.withOpacity(OpacityConstants.op04),
    spreadRadius: -Sizes.s8,
    blurRadius: Sizes.s8,
    offset: const Offset(-Sizes.s8, -Sizes.s0),
  )
];
