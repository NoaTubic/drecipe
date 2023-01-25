import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/discover_recipes/di/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:drecipe/features/discover_recipes/data/repositories/discover_recipes_repository.dart';
import 'package:drecipe/features/discover_recipes/ui/state/meal_time/meal_time_recipes_state.dart';

class MealTimeRecipesNotifier extends StateNotifier<MealTimeRecipesState> {
  final IDiscoverRecipesRepository _discoverRecipesRepository;
  AutoDisposeStateNotifierProviderRef<MealTimeRecipesNotifier,
      MealTimeRecipesState> ref;

  MealTimeRecipesNotifier(
    this._discoverRecipesRepository,
    this.ref,
  ) : super(MealTimeRecipesState.initial());

  Future<void> getMealTimeRecipes() async {
    state = state.copyWith(isLoading: true);

    final mealTimeRecipes = await _discoverRecipesRepository.getMealTimeRecipes(
        mealType: ref.read(mealTimeNotifierProvider).mealType);

    mealTimeRecipes.fold(
      (failure) => state = state.copyWith(
          error: failure.getFailureMessage(),
          showErrorMessages: true,
          isLoading: false),
      (mealTimeRecipes) => state = state.copyWith(
          mealTimeRecipes: [...state.mealTimeRecipes, ...mealTimeRecipes],
          isLoading: false),
    );
  }
}
