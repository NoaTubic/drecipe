import 'package:dio/dio.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/discover_recipes/data/models/recipe_discover_response.dart';
import 'package:drecipe/features/discover_recipes/data/models/recipe_recommended_response.dart';
import 'package:drecipe/features/recipe_details/data/models/responses/recipe_response.dart';
import 'package:drecipe/features/search_recipes/data/models/search_recipes_suggestions_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient.createDefault(Dio dio) = _ApiClient;

  @GET('/recipes/complexSearch')
  Future<RecipesDiscoverResponse> getRandomRecipes({
    @Query('sort') required String sort,
    @Query('addRecipeInformation') String addRecipeInformation = 'true',
    @Query('number') int number = Constants.numberOfRecipes,
    @Query('offset') int? offset,
    @Query('type') String? type,
    @Query('fillIngredients') String fillIngredients = 'true',
  });

  @GET('/recipes/{id}/information')
  Future<RecipeResponse> getRecipeDetails({
    @Path() required int id,
    @Query('includeNutrition') bool includeNutrition = true,
  });

  @GET('/recipes/{id}/similar')
  Future<List<RecipeRecommendedResponse>> getRecommendedRecipes({
    @Path() required int id,
    @Query('number') int number = Constants.numberOfRecipes,
  });

  @GET('/recipes/autocomplete')
  Future<List<SearchRecipesSuggestionResponse>> autocompleteRecipeSearch({
    @Query('query') required String searchQuery,
    @Query('number') int numberOfRecipes = Constants.numberOfRecipes,
  });

  @GET('/recipes/complexSearch')
  Future<RecipesDiscoverResponse> searchRecipes({
    @Query('includeIngredients') String? includeIngredients,
    @Query('excludeIngredients') String? excludeIngredients,
    @Query('cuisine') String? cuisine,
    @Query('type') String? type,
    @Query('diet') String? diet,
    @Query('intolerances') String? intolerances,
    @Query('maxReadyTime') String? maxReadyTime,
    @Query('sort') String? sort,
    @Query('sortDirection') String? sortDirection,
    @Query('minCalories') String? minCalories,
    @Query('maxCalories') String? maxCalories,
    @Query('query') required String query,
    @Query('addRecipeInformation') String addRecipeInformation = 'true',
    @Query('fillIngredients') String fillIngredients = 'true',
    @Query('number') int number = Constants.numberOfRecipes,
  });
}
