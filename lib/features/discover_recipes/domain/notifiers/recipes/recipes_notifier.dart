import 'package:drecipe/features/discover_recipes/data/repositories/discover_recipes_repository.dart';
import 'package:drecipe/features/discover_recipes/domain/notifiers/recipes/recipes_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final recipesNotifierProvider =
    StateNotifierProvider.autoDispose<RecipesNotifier, RecipesState>(
  (ref) => RecipesNotifier(
    ref.read(
      recipesRepositoryProvider,
    ),
    ref,
  )..getRecipes(),
);

class RecipesNotifier extends StateNotifier<RecipesState> {
  final DiscoverRecipesRepository _recipesRepository;
  AutoDisposeStateNotifierProviderRef<RecipesNotifier, RecipesState> ref;

  RecipesNotifier(this._recipesRepository, this.ref)
      : super(const RecipesState.initial());

  Future<void> getRecipes() async {
    state = const RecipesState.loading();

    final recipes = await _recipesRepository.getRecipes();
    recipes.fold(
      (failure) {
        return state = RecipesState.error(failure: failure.title);
      },
      (recipes) {
        return state = RecipesState.loaded(recipes: recipes);
      },
    );
  }
}
