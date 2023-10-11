import 'dart:async';
import 'package:drecipe/features/discover_recipes/data/repositories/discover_recipes_repository.dart';
import 'package:drecipe/features/discover_recipes/domain/notifiers/recipes/recommended_recipes_state.dart';
import 'package:drecipe/features/favorite_recipes/data/favorite_recipes_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final recommendedRecipesNotifierProvider = StateNotifierProvider.autoDispose<
    RecommendedRecipesNotifier, RecommendedRecipesState>(
  (ref) => RecommendedRecipesNotifier(
    ref.read(recipesRepositoryProvider),
    ref.read(favoriteRecipesRepositoryProvider),
    ref,
  )..getRecipes(),
);

class RecommendedRecipesNotifier
    extends StateNotifier<RecommendedRecipesState> {
  final DiscoverRecipesRepository _recipesRepository;
  final FavoriteRecipesRepository _favoriteRecipesRepository;

  // ignore: unused_field
  late StreamSubscription _streamSubscription;
  AutoDisposeStateNotifierProviderRef<RecommendedRecipesNotifier,
      RecommendedRecipesState> ref;

  RecommendedRecipesNotifier(
      this._recipesRepository, this._favoriteRecipesRepository, this.ref)
      : super(const RecommendedRecipesState.initial());

  Future<void> getRecipes() async {
    state = const RecommendedRecipesState.loading();

    _streamSubscription = _favoriteRecipesRepository
        .getFavoriteRecipesRemote()
        .listen((result) async {
      final recommendedRecipes =
          await _recipesRepository.getRecommendedRecipes();
      recommendedRecipes.fold((failure) {
        return state = RecommendedRecipesState.error(failure: failure.title);
      }, (recipes) {
        return state = RecommendedRecipesState.loaded(recipes: recipes);
      });
    });
  }
}
