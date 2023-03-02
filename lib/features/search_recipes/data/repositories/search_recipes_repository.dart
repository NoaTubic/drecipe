import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:drecipe/core/api/api_client.dart';
import 'package:drecipe/core/api/api_constants.dart';
import 'package:drecipe/core/api/api_helpers.dart';
import 'package:drecipe/features/discover_recipes/data/models/recipe_discover_response.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'dart:developer';
import 'package:drecipe/features/search_recipes/data/models/search_recipes_suggestions_response.dart';
import 'package:drecipe/features/search_recipes/domain/entities/search_recipes_suggestion.dart';

abstract class ISearchRecipesRepository {
  Future<Either<Failure, List<SearchRecipesSuggestion>>>
      autocompleteRecipeSearch({
    required String searchQuery,
  });
  Future<Either<Failure, List<RecipeDiscover>>> searchRecipes({
    String? includedIngredients,
    String? excludeIngredients,
    String? cuisine,
    String? mealType,
    String? diet,
    String? intolerances,
    String? minCalories,
    String? maxCalories,
    String? maxReadyTime,
    String? sort,
    String? sortDirection,
    required String searchQuery,
  });
}

class SearchRecipesRepository implements ISearchRecipesRepository {
  final ApiClient _apiClient;

  SearchRecipesRepository(this._apiClient);

  @override
  Future<Either<Failure, List<SearchRecipesSuggestion>>>
      autocompleteRecipeSearch({required String searchQuery}) async {
    try {
      final autocompleteSearchResponse =
          await _apiClient.autocompleteRecipeSearch(
        searchQuery: searchQuery.toLowerCase(),
      );
      final autocompleteResults = convertResults(autocompleteSearchResponse);
      return right(autocompleteResults);
    } on DioError catch (exception, st) {
      log('Exception: ${exception.error}, St: $st ,${st.hashCode}');
      return left(exception.handleFailure());
    }
  }

  @override
  Future<Either<Failure, List<RecipeDiscover>>> searchRecipes({
    String? includedIngredients,
    String? excludeIngredients,
    String? cuisine,
    String? mealType,
    String? diet,
    String? intolerances,
    String? minCalories,
    String? maxCalories,
    String? maxReadyTime,
    String? sort,
    String? sortDirection,
    required String searchQuery,
  }) async {
    try {
      final searchRecipesResponse = await _apiClient.searchRecipes(
        includeIngredients: includedIngredients,
        excludeIngredients: excludeIngredients,
        query: searchQuery,
        cuisine: cuisine,
        type: mealType,
        diet: diet,
        intolerances: intolerances,
        maxReadyTime: maxReadyTime,
        sort: sort,
        sortDirection: sortDirection,
        maxCalories: maxCalories,
        minCalories: minCalories,
      );

      List<RecipeDiscover> recipes =
          searchRecipesResponse.convertRecipesDiscover();

      return right(recipes);
    } on DioError catch (exception) {
      return left(exception.handleFailure());
    }
  }
}

List<SearchRecipesSuggestion> convertResults(
    List<SearchRecipesSuggestionResponse> suggestionsResponse) {
  List<SearchRecipesSuggestion> suggestionsList = [];
  for (var suggestion in suggestionsResponse) {
    suggestionsList.add(SearchRecipesSuggestion(
      title: suggestion.title,
      image:
          '${ApiConstants.recipeImageUrl}${suggestion.id}-90x90.${suggestion.imageType}',
    ));
  }
  return suggestionsList;
}
