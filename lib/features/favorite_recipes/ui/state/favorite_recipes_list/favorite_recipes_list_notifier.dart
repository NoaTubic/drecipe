import 'dart:async';
import 'package:drecipe/features/favorite_recipes/data/favorite_recipes_repository.dart';
import 'package:drecipe/features/favorite_recipes/ui/state/favorite_recipes_list/favorite_recipes_list_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteRecipesListNotifier
    extends StateNotifier<FavoriteRecipesListState> {
  final IFavoriteRecipesRepository _favoriteRecipesRepository;

  FavoriteRecipesListNotifier(
    this._favoriteRecipesRepository,
  ) : super(const FavoriteRecipesListState.initial());

  Future<void> getFavoriteRecipes() async {
    state = const FavoriteRecipesListState.loading();
    final favoriteRecipes =
        await _favoriteRecipesRepository.getFavoriteRecipes();

    favoriteRecipes.fold(
      (failure) => state = FavoriteRecipesListState.error(
        failure: failure,
      ),
      (favoriteRecipes) => state = FavoriteRecipesListState.loaded(
        recipes: favoriteRecipes,
      ),
    );
  }
}
