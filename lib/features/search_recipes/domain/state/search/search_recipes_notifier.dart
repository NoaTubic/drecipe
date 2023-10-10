import 'dart:developer';
import 'package:drecipe/features/search_recipes/data/repositories/search_recipes_repository.dart';
import 'package:drecipe/features/search_recipes/domain/state/filter/filter_recipes_notifier.dart';
import 'package:drecipe/features/search_recipes/domain/state/search/search_recipes_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchRecipesNotifierProvider =
    StateNotifierProvider<SearchRecipesNotifier, SearchRecipesState>(
  (ref) => SearchRecipesNotifier(
    ref.read(searchRepositoryProvider),
    ref,
  ),
);

class SearchRecipesNotifier extends StateNotifier<SearchRecipesState> {
  final SearchRecipesRepository _searchRecipesRepository;

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

  Future<void> onSortChanged(String sort) async {
    state = state.copyWith(sort: sort);
  }

  Future<void> changeSortDirection() async {
    state = state.copyWith(sortDirection: isAsc);
    searchRecipes();
  }

  String get isAsc =>
      state.sortDirection == 'ascending' ? 'descending' : 'ascending';
}
