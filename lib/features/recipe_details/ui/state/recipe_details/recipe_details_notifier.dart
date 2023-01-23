import 'package:drecipe/features/favorite_recipes/data/favorite_recipes_repository.dart';
import 'package:drecipe/features/recipe_details/data/repositories/recipe_details_repository.dart';
import 'package:drecipe/features/recipe_details/ui/state/recipe_details/recipe_details_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecipeDetailsNotifier extends StateNotifier<RecipeDetailsState> {
  final IRecipeDetailsRepository _recipeDetailsRepository;
  final IFavoriteRecipesRepository _favoriteRecipesRepository;
  RecipeDetailsNotifier(
      this._recipeDetailsRepository, this._favoriteRecipesRepository)
      : super(const RecipeDetailsState.initial());

  Future<void> getRecipeDetails({required int id}) async {
    state = const RecipeDetailsState.loading();

    final isFavoriteResult =
        await _favoriteRecipesRepository.checkIfFavoriteRecipe(recipeId: id);

    isFavoriteResult
        .fold((failure) => state = RecipeDetailsState.error(failure: failure),
            (isFavorite) async {
      if (isFavorite) {
        final recipe =
            await _favoriteRecipesRepository.getFavoriteRecipe(recipeId: id);
        recipe.fold(
          (failure) => state = RecipeDetailsState.error(failure: failure),
          (recipe) => state = RecipeDetailsState.loaded(recipe: recipe),
        );
      } else {
        final recipeDetails =
            await _recipeDetailsRepository.getRecipeDetails(id: id);

        recipeDetails.fold(
          (failure) => state = RecipeDetailsState.error(failure: failure),
          (recipe) => state = RecipeDetailsState.loaded(recipe: recipe),
        );
      }
    });
  }
}
