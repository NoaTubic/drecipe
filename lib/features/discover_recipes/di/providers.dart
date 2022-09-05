import 'package:dartz/dartz.dart';
import 'package:drecipe/core/api/providers.dart';
import 'package:drecipe/features/discover_recipes/data/repositories/discover_recipes_repository.dart';
import 'package:drecipe/features/discover_recipes/ui/state/meal_time/meal_time_notifier.dart';
import 'package:drecipe/features/discover_recipes/ui/state/meal_time/meal_time_state.dart';
import 'package:drecipe/features/discover_recipes/ui/state/recipes/recipes_notifier.dart';
import 'package:drecipe/features/discover_recipes/ui/state/recipes/recipes_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final recipesRepositoryProvider = Provider<IDiscoverRecipesRepository>(
  (ref) => DiscoverRecipesRepository(
    ref.read(apiClientProvider),
  ),
);

final recipesNotifierProvider =
    StateNotifierProvider<RecipesNotifier, RecipesState>(
  (ref) => RecipesNotifier(
    ref.read(
      recipesRepositoryProvider,
    ),
  ),
);

final initRecipesProvider = FutureProvider<Unit>(
  (ref) async {
    final recipesProvider = ref.read(recipesNotifierProvider.notifier);
    recipesProvider.getRecipes();
    return unit;
  },
);

final mealTimeNotifierProvider =
    StateNotifierProvider<MealTimeNotifier, MealTimeState>(
  (ref) => MealTimeNotifier(),
);

final initMealTimeProvider = FutureProvider<Unit>(
  (ref) async {
    final mealTimeProvider = ref.read(mealTimeNotifierProvider.notifier);
    mealTimeProvider.getMealTypeAndTime();
    return unit;
  },
);
