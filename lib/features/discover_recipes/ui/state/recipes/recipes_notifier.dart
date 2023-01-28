import 'package:drecipe/features/discover_recipes/data/repositories/discover_recipes_repository.dart';
import 'package:drecipe/features/discover_recipes/ui/state/recipes/recipes_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecipesNotifier extends StateNotifier<RecipesState> {
  final IDiscoverRecipesRepository _recipesRepository;
  AutoDisposeStateNotifierProviderRef<RecipesNotifier, RecipesState> ref;

  RecipesNotifier(this._recipesRepository, this.ref)
      : super(const RecipesState.initial());

  Future<void> getRecipes() async {
    state = const RecipesState.loading();
    if (false) {
      state = const RecipesState.offline();
    } else {
      final recipes = await _recipesRepository.getRecipes();
      recipes.fold(
        (failure) {
          return state = RecipesState.error(failure: failure);
        },
        (recipes) {
          return state = RecipesState.loaded(recipes: recipes);
        },
      );
    }
  }
}
