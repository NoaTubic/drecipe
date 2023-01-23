import 'package:drecipe/features/search_recipes/data/repositories/search_recipes_repository.dart';
import 'package:drecipe/features/search_recipes/ui/state/search_recipes_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchRecipesNotifier extends StateNotifier<SearchRecipesState> {
  final ISearchRecipesRepository _searchRecipesRepository;

  SearchRecipesNotifier(this._searchRecipesRepository)
      : super(SearchRecipesState.initial());

  Future<void> autocompleteRecipeSearch(String query) async {
    state = state.copyWith(
      isLoadingSuggestions: true,
    );

    final suggestions = await _searchRecipesRepository.autocompleteRecipeSearch(
        searchQuery: query);

    suggestions.fold(
      (failure) => null,
      (suggestions) => state = state.copyWith(
        isLoadingSuggestions: false,
        suggestions: suggestions,
      ),
    );
  }

  Future<void> searchRecipes(String query) async {
    state = state.copyWith(
      isLoading: true,
      showErrorMessages: false,
    );

    final results = await _searchRecipesRepository.searchRecipes(
      searchQuery: query,
      state.cuisine,
      state.mealType,
      state.diet,
      state.intolerances,
      state.minCalories,
      state.maxCalories,
      state.maxReadyTime,
      state.sort,
      state.sortDirection,
    );
    await Future.delayed(const Duration(seconds: 1));

    results.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        showErrorMessages: true,
      ),
      (results) => state = state.copyWith(
        isLoading: false,
        recipes: results,
      ),
    );
  }
}
