import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/search_recipes/domain/state/filter/filter_constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_recipes_state.freezed.dart';

@freezed
class FilterRecipesState with _$FilterRecipesState {
  const factory FilterRecipesState({
    required String ingredientToInclude,
    required String ingredientToExclude,
    required List<String> includeIngredients,
    required List<String> excludeIngredients,
    required List<String> mealType,
    required List<String> cuisine,
    required List<String> diet,
    required List<String> intolerances,
    String? maxReadyTime,
    String? minCalories,
    String? maxCalories,
    required String? sort,
    required String? sortDirection,
    String? query,
  }) = _FilterRecipesState;

  factory FilterRecipesState.initial() => const FilterRecipesState(
        ingredientToInclude: '',
        ingredientToExclude: '',
        includeIngredients: [],
        excludeIngredients: [],
        mealType: [],
        cuisine: [],
        diet: [],
        intolerances: [],
        sort: Constants.randomRecipes,
        sortDirection: FilterConstants.sortAsc,
      );
}
