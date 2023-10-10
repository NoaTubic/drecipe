import 'package:drecipe/features/search_recipes/domain/state/filter/filter_constants.dart';
import 'package:drecipe/features/search_recipes/domain/state/filter/filter_recipes_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final filterRecipesNotifierProvider =
    StateNotifierProvider<FilterRecipesNotifier, FilterRecipesState>(
  (ref) => FilterRecipesNotifier(),
);

class FilterRecipesNotifier extends StateNotifier<FilterRecipesState> {
  FilterRecipesNotifier() : super(FilterRecipesState.initial());

  void addFilter(String value, String filter) {
    switch (filter) {
      case FilterConstants.cuisine:
        return addCuisine(value);
      case FilterConstants.mealType:
        return addMealType(value);
      case FilterConstants.diet:
        return addDiet(value);
      case FilterConstants.intolerance:
        return addIntolerance(value);
      default:
    }
  }

  void removeFilter(String value, String filter) {
    switch (filter) {
      case FilterConstants.cuisine:
        return removeCuisine(value);
      case FilterConstants.mealType:
        return removeMealType(value);
      case FilterConstants.diet:
        return removeDiet(value);
      case FilterConstants.intolerance:
        return removeIntolerance(value);
      default:
    }
  }

  bool checkIfSelected(String value, String filter) {
    switch (filter) {
      case 'Cuisine':
        return state.cuisine.contains(value);
      case 'Meal type':
        return state.mealType.contains(value);
      case 'Diet':
        return state.diet.contains(value);
      case 'Intolerances':
        return state.intolerances.contains(value);
      default:
        return false;
    }
  }

  void onIngredientToIncludeChanged(String ingredient) {
    state = state.copyWith(ingredientToInclude: ingredient);
  }

  void onIngredientToExcludeChanged(String ingredient) {
    state = state.copyWith(ingredientToExclude: ingredient);
  }

  void addIncludedIngredient(String ingredient) {
    if (ingredient.isNotEmpty) {
      state = state.copyWith(
          includeIngredients: [...state.includeIngredients, ingredient]);
    }
  }

  void removeIncludedIngredient(String ingredient) {
    List<String> includedIngredients = List.from(state.includeIngredients);
    state = state.copyWith(
        includeIngredients: includedIngredients
          ..removeWhere((ii) => ii == ingredient));
  }

  void addExcludedIngredient(String ingredient) {
    if (ingredient.isNotEmpty) {
      state = state.copyWith(
          excludeIngredients: [...state.excludeIngredients, ingredient]);
    }
  }

  void removeExcludedIngredient(String ingredient) {
    List<String> excludeIngredients = List.from(state.excludeIngredients);
    state = state.copyWith(
        excludeIngredients: excludeIngredients
          ..removeWhere((ei) => ei == ingredient));
  }

  void addMealType(String mealType) {
    state = state.copyWith(mealType: [...state.mealType, mealType]);
  }

  void removeMealType(String mealType) {
    List<String> mealTypes = List.from(state.mealType);

    state = state.copyWith(
      mealType: mealTypes..removeWhere((mt) => mt == mealType),
    );
  }

  void addCuisine(String cuisine) {
    state = state.copyWith(cuisine: [...state.cuisine, cuisine]);
  }

  void removeCuisine(String cuisine) {
    List<String> cuisines = List.from(state.cuisine);
    state = state.copyWith(
      cuisine: cuisines..removeWhere((c) => c == cuisine),
    );
  }

  void addDiet(String diet) {
    state = state.copyWith(diet: [...state.diet, diet]);
  }

  void removeDiet(String diet) {
    List<String> diets = List.from(state.diet);
    state = state.copyWith(
      diet: diets..removeWhere((d) => d == diet),
    );
  }

  void addIntolerance(String intolerance) {
    state = state.copyWith(intolerances: [...state.intolerances, intolerance]);
  }

  void removeIntolerance(String intolerance) {
    List<String> intolerances = List.from(state.diet);
    state = state.copyWith(
      intolerances: intolerances..removeWhere((i) => i == intolerance),
    );
  }

  void onMaxReadyTimeChanged(String maxReadyTime) {
    state = state.copyWith(maxReadyTime: maxReadyTime);
  }

  void onMinCaloriesChanged(String minCalories) {
    state = state.copyWith(minCalories: minCalories);
  }

  void onMaxCaloriesChanged(String maxCalories) {
    state = state.copyWith(maxCalories: maxCalories);
  }
}
