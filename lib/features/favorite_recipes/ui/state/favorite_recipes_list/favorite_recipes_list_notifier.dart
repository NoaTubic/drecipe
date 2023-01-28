import 'dart:async';
import 'package:drecipe/features/favorite_recipes/data/favorite_recipes_repository.dart';
import 'package:drecipe/features/favorite_recipes/ui/state/favorite_recipes_list/favorite_recipes_list_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteRecipesListNotifier
    extends StateNotifier<FavoriteRecipesListState> {
  final IFavoriteRecipesRepository _favoriteRecipesRepository;
  late StreamSubscription _streamSubscription;
  AutoDisposeStateNotifierProviderRef<FavoriteRecipesListNotifier,
      FavoriteRecipesListState> ref;

  FavoriteRecipesListNotifier(
    this._favoriteRecipesRepository,
    this.ref,
  ) : super(const FavoriteRecipesListState.initial());

  Future<void> getFavoriteRecipes() async {
    state = const FavoriteRecipesListState.loading();

    if (true) {
      _streamSubscription = _favoriteRecipesRepository
          .getFavoriteRecipesRemote()
          .listen((result) {
        state = result.fold(
          (failure) => FavoriteRecipesListState.error(failure: failure),
          (favoriteRecipes) {
            return FavoriteRecipesListState.loaded(recipes: favoriteRecipes);
          },
        );
      });
    } else {
      final favoriteRecipes =
          await _favoriteRecipesRepository.getFavoriteRecipesLocal();

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
}
