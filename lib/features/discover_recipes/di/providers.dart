import 'package:drecipe/core/api/providers.dart';
import 'package:drecipe/features/discover_recipes/data/repositories/discover_recipes_repository.dart';
import 'package:drecipe/features/discover_recipes/ui/state/meal_time/meal_time_notifier.dart';
import 'package:drecipe/features/discover_recipes/ui/state/meal_time/meal_time_recipes_notifier.dart';
import 'package:drecipe/features/discover_recipes/ui/state/meal_time/meal_time_recipes_state.dart';
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
  )..getRecipes(),
);

final mealTimeNotifierProvider =
    StateNotifierProvider<MealTimeNotifier, MealTimeState>(
  (ref) => MealTimeNotifier()..getMealTypeAndTime(),
);

final mealTimeRecipesProvider = StateNotifierProvider.autoDispose<
    MealTimeRecipesNotifier, MealTimeRecipesState>(
  (ref) => MealTimeRecipesNotifier(
    ref.read(recipesRepositoryProvider),
    ref,
  ),
);
