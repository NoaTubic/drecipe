import 'package:dio/dio.dart';
import 'package:drecipe/features/discover_recipes/data/models/recipes_response.dart';
import 'package:drecipe/features/recipe_details/data/models/recipe_details_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient.createDefault(Dio dio) = _ApiClient;

  @GET('/recipes/random')
  Future<RecipesResponse> getRandomRecipes(
    // @Query('tags') String tags = '',
    @Query('number') int number,
  );

  @GET('/recipes/{id}/information')
  Future<RecipeDetailsResponse> getRecipeDetails({
    @Path() required int id,
    @Query('includeNutrition') bool includeNutrition = true,
  });
}
