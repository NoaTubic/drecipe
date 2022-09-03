import 'package:drecipe/features/discover_recipes/data/repositories/discover_recipes_repository.dart';
import 'package:drecipe/features/discover_recipes/ui/state/recipes_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecipesNotifier extends StateNotifier<RecipesState> {
  final IDiscoverRecipesRepository _recipesRepository;

  RecipesNotifier(this._recipesRepository)
      : super(const RecipesState.initial());

  Future<void> getRecipes() async {
    state = const RecipesState.loading();

    final recipes = await _recipesRepository.getRandomRecipes();
    recipes.fold(
      (failure) {
        return state = RecipesState.error(failure: failure);
      },
      (recipes) {
        return state = RecipesState.loaded(recipe: recipes.recipes);
      },
    );
  }
}
