import 'dart:developer';
import 'package:drecipe/features/search_recipes/data/repositories/search_recipes_repository.dart';
import 'package:drecipe/features/search_recipes/di/providers.dart';
import 'package:drecipe/features/search_recipes/ui/state/search/search_recipes_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchRecipesNotifier extends StateNotifier<SearchRecipesState> {
  final ISearchRecipesRepository _searchRecipesRepository;

  StateNotifierProviderRef<SearchRecipesNotifier, SearchRecipesState> ref;

  SearchRecipesNotifier(this._searchRecipesRepository, this.ref)
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
        searchQuery: query,
      ),
    );
  }

  Future<void> searchRecipes() async {
    state = state.copyWith(
      isLoading: true,
      showErrorMessages: false,
    );

    final filters = ref.watch(filterRecipesNotifierProvider);

    final results = await _searchRecipesRepository.searchRecipes(
      searchQuery: state.searchQuery,
      includedIngredients: formatFilter(filters.includeIngredients),
      excludeIngredients: formatFilter(filters.excludeIngredients),
      cuisine: formatFilter(filters.cuisine),
      mealType: formatFilter(filters.mealType),
      diet: formatFilter(filters.diet),
      intolerances: formatFilter(filters.intolerances),
      minCalories: filters.minCalories,
      maxCalories: filters.maxCalories,
      maxReadyTime: filters.maxReadyTime,
      sort: state.sort,
      sortDirection: state.sortDirection,
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

  String? formatFilter(List<String> strings) {
    if (strings.isEmpty) {
      return null;
    }
    String formattedFilterValues = '';
    for (var string in strings) {
      formattedFilterValues = '$formattedFilterValues,$string';
    }
    log(formattedFilterValues.substring(1, formattedFilterValues.length));
    return formattedFilterValues
        .substring(1, formattedFilterValues.length)
        .toLowerCase();
  }
}
