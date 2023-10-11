import 'dart:async';

import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/assets/image_assets.dart';
import 'package:drecipe/features/discover_recipes/domain/notifiers/meal_time/meal_time_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mealTimeNotifierProvider =
    StateNotifierProvider<MealTimeNotifier, MealTimeState>(
  (ref) => MealTimeNotifier()..getMealTypeAndTime(),
);

class MealTimeNotifier extends StateNotifier<MealTimeState> {
  MealTimeNotifier() : super(MealTimeState.initial());
  // ignore: unused_field
  late final Timer _timer;

  Future<void> getMealTypeAndTime() async {
    state = state.copyWith(isLoading: true);

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      DateTime dateTime = DateTime.now();
      String minute =
          dateTime.minute > 9 ? '${dateTime.minute}' : '0${dateTime.minute}';
      String hour =
          dateTime.hour > 9 ? '${dateTime.hour}' : '0${dateTime.hour}';
      String currentTime = '$hour : $minute';
      Future.delayed(const Duration(seconds: 3), () {
        state = state.copyWith(currentTime: currentTime, isLoading: false);
      });

      if (dateTime.hour >= 6 && dateTime.hour < 12) {
        state = state.copyWith(
          currentTime: currentTime,
          mealType: Constants.mealTimeBreakfast,
          mealTypeIcon: ImageAssets.icBreakfast,
        );
      } else if (dateTime.hour >= 12 && dateTime.hour < 16) {
        state = state.copyWith(
          currentTime: currentTime,
          mealType: Constants.mealTimeLunch,
          mealTypeIcon: ImageAssets.icLunch,
        );
      } else if (dateTime.hour >= 16 && dateTime.hour < 18) {
        state = state.copyWith(
          currentTime: currentTime,
          mealType: Constants.mealTimeSnack,
          mealTypeIcon: ImageAssets.icSnack,
        );
      } else if (dateTime.hour >= 18 && dateTime.hour < 23) {
        state = state.copyWith(
          currentTime: currentTime,
          mealType: Constants.mealTimeDinner,
          mealTypeIcon: ImageAssets.icDinner,
        );
      } else {
        state = state.copyWith(
          currentTime: currentTime,
          mealType: Constants.mealTimeBed,
          mealTypeIcon: ImageAssets.icBed,
        );
      }
    });
  }
}
