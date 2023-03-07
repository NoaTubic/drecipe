import 'package:drecipe/features/common/ui/assets/image_assets.dart';
import 'package:drecipe/features/discover_recipes/domain/notifiers/meal_time/meal_time_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mealTimeNotifierProvider =
    StateNotifierProvider<MealTimeNotifier, MealTimeState>(
  (ref) => MealTimeNotifier()..getMealTypeAndTime(),
);

class MealTimeNotifier extends StateNotifier<MealTimeState> {
  MealTimeNotifier() : super(MealTimeState.initial());

  Future<void> getMealTypeAndTime() async {
    state = state.copyWith(isLoading: true);

    DateTime dateTime = DateTime.now();
    String minute =
        dateTime.minute > 9 ? '${dateTime.minute}' : '0${dateTime.minute}';
    String hour = dateTime.hour > 9 ? '${dateTime.hour}' : '0${dateTime.hour}';
    String currentTime = '$hour : $minute';
    Future.delayed(const Duration(seconds: 3), () {
      state = state.copyWith(currentTime: currentTime, isLoading: false);
    });

    if (dateTime.hour >= 6 && dateTime.hour < 12) {
      state = state.copyWith(
        currentTime: currentTime,
        mealType: 'breakfast',
        mealTypeIcon: ImageAssets.icBreakfast,
      );
    } else if (dateTime.hour >= 12 && dateTime.hour < 16) {
      state = state.copyWith(
        currentTime: currentTime,
        mealType: 'lunch',
        mealTypeIcon: ImageAssets.icLunch,
      );
    } else if (dateTime.hour >= 16 && dateTime.hour < 18) {
      state = state.copyWith(
        currentTime: currentTime,
        mealType: 'snack',
        mealTypeIcon: ImageAssets.icSnack,
      );
    } else if (dateTime.hour >= 18 && dateTime.hour < 23) {
      state = state.copyWith(
        currentTime: currentTime,
        mealType: 'dinner',
        mealTypeIcon: ImageAssets.icDinner,
      );
    } else {
      state = state.copyWith(
        currentTime: currentTime,
        mealType: 'bed',
        mealTypeIcon: ImageAssets.icBed,
      );
    }
  }
}