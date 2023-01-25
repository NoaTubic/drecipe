import 'package:drecipe/features/favorite_recipes/di/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/favorite_recipes/data/favorite_recipes_repository.dart';
import 'package:drecipe/features/favorite_recipes/ui/state/favorite_recipe/favorite_recipe_state.dart';
import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';

class FavoriteRecipeNotifier extends StateNotifier<FavoriteRecipeState> {
  final IFavoriteRecipesRepository _favoriteRecipesRepository;
  AutoDisposeStateNotifierProviderRef<FavoriteRecipeNotifier,
      FavoriteRecipeState> ref;

  FavoriteRecipeNotifier(
    this._favoriteRecipesRepository,
    this.ref,
  ) : super(FavoriteRecipeState.initial());

  Future<void> addFavoriteRecipe({
    required Recipe recipe,
  }) async {
    final addToFavoritesResult =
        await _favoriteRecipesRepository.addFavoriteRecipe(recipe: recipe);

    addToFavoritesResult.fold(
      (failure) => state = state.copyWith(showErrorMessages: true),
      (success) => state = state.copyWith(
        isFavorite: true,
        isHeartAnimating: true,
      ),
    );
    ref.read(favoriteRecipesListNotifierProvider.notifier).getFavoriteRecipes();

    await Future.delayed(
      const Duration(seconds: DurationConstants.d2),
      () {},
    );
    if (!mounted) {
      return;
    }
    state = state.copyWith(isHeartAnimating: false);
  }

  Future<void> removeFavoriteRecipe({required int recipeId}) async {
    final removeFromFavoritesResult = await _favoriteRecipesRepository
        .removeFavoriteRecipe(recipeId: recipeId);

    removeFromFavoritesResult.fold(
      (failure) => state = state.copyWith(showErrorMessages: true),
      (success) => state = state.copyWith(
        isFavorite: false,
        isHeartAnimating: true,
      ),
    );
    ref.read(favoriteRecipesListNotifierProvider.notifier).getFavoriteRecipes();

    await Future.delayed(
      const Duration(seconds: DurationConstants.d2),
      () {},
    );
    if (!mounted) {
      return;
    }
    state = state.copyWith(isHeartAnimating: false);
  }

  Future<void> checkIfFavoriteRecipe({required int recipeId}) async {
    final isFavoriteResult = await _favoriteRecipesRepository
        .checkIfFavoriteRecipe(recipeId: recipeId);

    isFavoriteResult.fold(
      (failure) => state = state.copyWith(showErrorMessages: true),
      (success) => state = state.copyWith(isFavorite: success),
    );
  }

  Future<bool> checkIfFavoriteRecipeBool({required int recipeId}) async {
    final isFavoriteResult = await _favoriteRecipesRepository
        .checkIfFavoriteRecipe(recipeId: recipeId);
    bool isFavorite = false;
    isFavoriteResult.fold(
      (failure) => isFavorite = false,
      (success) => isFavorite = success,
    );
    return isFavorite;
  }
}
