import 'package:drecipe/features/discover_recipes/domain/notifiers/meal_time/meal_time_notifier.dart';
import 'package:drecipe/features/discover_recipes/domain/notifiers/meal_time/meal_time_recipes_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drecipe/features/discover_recipes/data/repositories/discover_recipes_repository.dart';

final mealTimeRecipesProvider = StateNotifierProvider.autoDispose<
    MealTimeRecipesNotifier, MealTimeRecipesState>(
  (ref) => MealTimeRecipesNotifier(
    ref.read(recipesRepositoryProvider),
    ref,
  ),
);

class MealTimeRecipesNotifier extends StateNotifier<MealTimeRecipesState> {
  final DiscoverRecipesRepository _discoverRecipesRepository;
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
        error: failure.title,
        showErrorMessages: true,
        isLoading: false,
      ),
      (mealTimeRecipes) => state = state.copyWith(
          mealTimeRecipes: [...state.mealTimeRecipes, ...mealTimeRecipes],
          isLoading: false),
    );
  }
}
