import 'package:drecipe/features/favorite_recipes/data/favorite_recipes_repository.dart';
import 'package:drecipe/features/recipe_details/data/repositories/recipe_details_repository.dart';
import 'package:drecipe/features/recipe_details/domain/state/recipe_details/recipe_details_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final recipeDetailsNotifierProvider =
    StateNotifierProvider<RecipeDetailsNotifier, RecipeDetailsState>(
  (ref) => RecipeDetailsNotifier(
    ref.read(recipeDetailsRepositoryProvider),
    ref.read(favoriteRecipesRepositoryProvider),
  ),
);

class RecipeDetailsNotifier extends StateNotifier<RecipeDetailsState> {
  final RecipeDetailsRepository _recipeDetailsRepository;
  final FavoriteRecipesRepository _favoriteRecipesRepository;

  RecipeDetailsNotifier(
      this._recipeDetailsRepository, this._favoriteRecipesRepository)
      : super(const RecipeDetailsState.initial());

  Future<void> getRecipeDetails({required int id}) async {
    state = const RecipeDetailsState.loading();

    final isFavoriteResult =
        await _favoriteRecipesRepository.checkIfFavoriteRecipe(recipeId: id);

    isFavoriteResult.fold(
        (failure) => state = RecipeDetailsState.error(
              failure: failure.title,
            ), (isFavorite) async {
      if (isFavorite) {
        final recipe =
            await _favoriteRecipesRepository.getFavoriteRecipe(recipeId: id);
        recipe.fold(
          (failure) => state = RecipeDetailsState.error(failure: failure.title),
          (recipe) => state = RecipeDetailsState.loaded(recipe: recipe),
        );
      } else {
        final recipeDetails =
            await _recipeDetailsRepository.getRecipeDetails(id: id);

        recipeDetails.fold(
          (failure) => state = RecipeDetailsState.error(failure: failure.title),
          (recipe) => state = RecipeDetailsState.loaded(recipe: recipe),
        );
      }
    });
  }
}
