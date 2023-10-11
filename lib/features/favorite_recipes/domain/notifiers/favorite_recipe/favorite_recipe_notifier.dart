import 'package:drecipe/features/auth/domain/notifiers/auth/auth_notifier.dart';
import 'package:drecipe/features/common/ui/widgets/primary_toast.dart';
import 'package:drecipe/features/discover_recipes/domain/notifiers/recipes/recommended_recipes_notifier.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/favorite_recipes/data/favorite_recipes_repository.dart';
import 'package:drecipe/features/favorite_recipes/domain/notifiers/favorite_recipe/favorite_recipe_state.dart';
import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';

final favoriteRecipeNotifierProvider = StateNotifierProvider.autoDispose<
    FavoriteRecipeNotifier, FavoriteRecipeState>(
  (ref) {
    ref.maintainState = true;
    return FavoriteRecipeNotifier(
      ref.read(favoriteRecipesRepositoryProvider),
      ref,
    );
  },
);

class FavoriteRecipeNotifier extends StateNotifier<FavoriteRecipeState> {
  final FavoriteRecipesRepository _favoriteRecipesRepository;
  AutoDisposeStateNotifierProviderRef<FavoriteRecipeNotifier,
      FavoriteRecipeState> ref;

  FavoriteRecipeNotifier(
    this._favoriteRecipesRepository,
    this.ref,
  ) : super(FavoriteRecipeState.initial());

  Future<void> addFavoriteRecipe({
    required Recipe recipe,
  }) async {
    if (!mounted) {
      return;
    }
    if (ref.watch(isUserAnonymous)) {
      showPrimaryToast(S.current.favorite_recipes_sign_in);
      state = state.copyWith(showErrorMessages: true);
    } else {
      final addToFavoritesResult =
          await _favoriteRecipesRepository.addFavoriteRecipe(
        recipe: recipe,
      );

      addToFavoritesResult.fold(
        (failure) => state = state.copyWith(showErrorMessages: true),
        (success) {
          ref.read(recommendedRecipesNotifierProvider.notifier).getRecipes();

          return state = state.copyWith(
            isFavorite: true,
            isHeartAnimating: true,
          );
        },
      );
      // ref.read(favoriteRecipesListNotifierProvider.notifier).getFavoriteRecipes();

      await Future.delayed(
        const Duration(seconds: DurationConstants.d2),
        () {},
      );
      if (!mounted) {
        return;
      }
      state = state.copyWith(isHeartAnimating: false);
    }
  }

  Future<void> removeFavoriteRecipe(
      {required int recipeId, bool withAnimation = true}) async {
    if (ref.watch(isUserAnonymous)) {
      state = state.copyWith(showErrorMessages: true);
    } else {
      final removeFromFavoritesResult =
          await _favoriteRecipesRepository.removeFavoriteRecipe(
        recipeId: recipeId,
      );

      removeFromFavoritesResult.fold(
        (failure) => state = state.copyWith(showErrorMessages: true),
        (success) => state = state.copyWith(
          isFavorite: false,
          isHeartAnimating: withAnimation,
        ),
      );
      // ref.read(favoriteRecipesListNotifierProvider.notifier).getFavoriteRecipes();

      if (withAnimation) {
        await Future.delayed(
          const Duration(seconds: DurationConstants.d2),
          () {},
        );
        if (!mounted) {
          return;
        }
        state = state.copyWith(isHeartAnimating: false);
      }
    }
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
