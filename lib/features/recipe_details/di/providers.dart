import 'package:drecipe/core/api/providers.dart';
import 'package:drecipe/features/recipe_details/data/repositories/recipe_details_repository.dart';
import 'package:drecipe/features/recipe_details/ui/state/recipe_details_notifier.dart';
import 'package:drecipe/features/recipe_details/ui/state/recipe_details_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final recipeDetailsRepositoryProvider = Provider<IRecipeDetailsRepository>(
  (ref) => RecipeDetailsRepository(
    ref.read(apiClientProvider),
  ),
);

final recipeDetailsNotifierProvider =
    StateNotifierProvider<RecipeDetailsNotifier, RecipeDetailsState>(
  (ref) => RecipeDetailsNotifier(
    ref.read(
      recipeDetailsRepositoryProvider,
    ),
  ),
);
