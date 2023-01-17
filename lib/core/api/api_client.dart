import 'package:dio/dio.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/discover_recipes/data/models/recipe_discover_response.dart';
import 'package:drecipe/features/recipe_details/data/models/responses/recipe_response.dart';
import 'package:drecipe/features/search_recipes/data/models/search_recipes_suggestions_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient.createDefault(Dio dio) = _ApiClient;

  // @GET('/recipes/random')
  // Future<RecipesResponse> getRandomRecipes(
  //   // @Query('tags') String tags = '',
  //   @Query('number') int number,
  // );

  @GET('/recipes/complexSearch')
  Future<RecipesDiscoverResponse> getRandomRecipes({
    @Query('sort') required String sort,
    @Query('addRecipeInformation') String addRecipeInformation = 'true',
    @Query('number') int number = Constants.numberOfRecipes,
  });

  @GET('/recipes/{id}/information')
  Future<RecipeResponse> getRecipeDetails({
    @Path() required int id,
    @Query('includeNutrition') bool includeNutrition = true,
  });

  @GET('/recipes/autocomplete')
  Future<List<SearchRecipesSuggestionResponse>> autocompleteRecipeSearch({
    @Query('query') required String searchQuery,
    @Query('number') int numberOfRecipes = Constants.numberOfRecipes,
  });

  @GET('/recipes/complexSearch')
  Future<RecipesDiscoverResponse> searchRecipes({
    @Query('query') required String cuisine,
    @Query('query') required String mealType,
    @Query('query') required String diet,
    @Query('query') required String intolerances,
    @Query('query') required String maxReadyTime,
    @Query('query') required String sort,
    @Query('query') required String sortDirection,
    @Query('query') required String minCalories,
    @Query('query') required String maxCalories,
    @Query('query') required String query,
    @Query('addRecipeInformation') String addRecipeInformation = 'true',
    @Query('fillIngredients') String fillIngredients = 'true',
    @Query('number') int number = Constants.numberOfRecipes,
  });
}
