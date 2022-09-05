import 'package:drecipe/features/common/ui/styles.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_time_state.freezed.dart';

@freezed
class MealTimeState with _$MealTimeState {
  const factory MealTimeState({
    required String currentTime,
    required String mealTypeIcon,
    required String mealType,
    required bool isLoading,
  }) = _MealTimeState;

  factory MealTimeState.initial() => const MealTimeState(
        currentTime: '',
        mealTypeIcon: ImageAssets.icApple,
        mealType: '',
        isLoading: true,
      );
}
