import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';
import 'package:drecipe/features/search_recipes/domain/entities/search_recipes_suggestion.dart';
import 'package:drecipe/features/search_recipes/domain/state/filter/filter_constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_recipes_state.freezed.dart';

@freezed
class SearchRecipesState with _$SearchRecipesState {
  const factory SearchRecipesState({
    required String searchQuery,
    required String cuisine,
    required String mealType,
    required String diet,
    required String intolerances,
    required String maxReadyTime,
    required String sort,
    required String sortDirection,
    required String maxCalories,
    required String minCalories,
    required bool isLoadingSuggestions,
    required bool isLoading,
    required bool showErrorMessages,
    required List<SearchRecipesSuggestion> suggestions,
    required List<RecipeDiscover> recipes,
  }) = _SearchRecipesState;

  factory SearchRecipesState.initial() => const SearchRecipesState(
        searchQuery: '',
        cuisine: '',
        mealType: '',
        diet: '',
        intolerances: '',
        maxReadyTime: '',
        sort: Constants.randomRecipes,
        sortDirection: FilterConstants.sortAsc,
        maxCalories: '',
        minCalories: '',
        isLoadingSuggestions: false,
        isLoading: false,
        showErrorMessages: false,
        suggestions: [],
        recipes: [],
      );
}
