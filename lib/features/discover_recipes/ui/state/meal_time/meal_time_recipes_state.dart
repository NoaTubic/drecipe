import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_time_recipes_state.freezed.dart';

// @freezed
// class MealTimeRecipesState with _$MealTimeRecipesState {
//   const factory MealTimeRecipesState.initial() = _Initial;
//   const factory MealTimeRecipesState.loading() = _Loading;
//   const factory MealTimeRecipesState.loaded({
//     required List<RecipeDiscover> recipes,
//   }) = _Loaded;
//   const factory MealTimeRecipesState.error({
//     required Failure failure,
//   }) = _Error;
// }

@freezed
class MealTimeRecipesState with _$MealTimeRecipesState {
  const factory MealTimeRecipesState({
    required bool isLoading,
    required List<RecipeDiscover> mealTimeRecipes,
    required String error,
    required bool showErrorMessages,
  }) = _MealTimeRecipesState;

  factory MealTimeRecipesState.initial() => const MealTimeRecipesState(
        isLoading: false,
        mealTimeRecipes: [],
        error: '',
        showErrorMessages: false,
      );
}
