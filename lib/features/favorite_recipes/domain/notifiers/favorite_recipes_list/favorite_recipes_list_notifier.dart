import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:drecipe/core/providers/providers.dart';
import 'package:drecipe/features/favorite_recipes/data/favorite_recipes_repository.dart';
import 'package:drecipe/features/favorite_recipes/domain/notifiers/favorite_recipes_list/favorite_recipes_list_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favoriteRecipesListNotifierProvider = StateNotifierProvider.autoDispose<
    FavoriteRecipesListNotifier, FavoriteRecipesListState>(
  (ref) => FavoriteRecipesListNotifier(
    ref.read(favoriteRecipesRepositoryProvider),
    ref,
  )..getFavoriteRecipes(),
);

class FavoriteRecipesListNotifier
    extends StateNotifier<FavoriteRecipesListState> {
  final FavoriteRecipesRepository _favoriteRecipesRepository;
  // ignore: unused_field
  late StreamSubscription _streamSubscription;
  AutoDisposeStateNotifierProviderRef<FavoriteRecipesListNotifier,
      FavoriteRecipesListState> ref;

  FavoriteRecipesListNotifier(
    this._favoriteRecipesRepository,
    this.ref,
  ) : super(const FavoriteRecipesListState.initial());

  Future<void> getFavoriteRecipes() async {
    state = const FavoriteRecipesListState.loading();
    final bool isConnectionAvailable =
        ref.read(connectivityNotifierProvider).connectivityResult !=
            ConnectivityResult.none;

    if (isConnectionAvailable) {
      _streamSubscription = _favoriteRecipesRepository
          .getFavoriteRecipesRemote()
          .listen((result) {
        state = result.fold(
          (failure) => FavoriteRecipesListState.error(
            error: failure.title,
          ),
          (favoriteRecipes) {
            return FavoriteRecipesListState.loaded(
              recipes: favoriteRecipes,
            );
          },
        );
      });
    } else {
      final favoriteRecipes =
          await _favoriteRecipesRepository.getFavoriteRecipesLocal();

      favoriteRecipes.fold(
        (failure) => state = FavoriteRecipesListState.error(
          error: failure.title,
        ),
        (favoriteRecipes) => state = FavoriteRecipesListState.loaded(
          recipes: favoriteRecipes,
        ),
      );
    }
  }
}
