import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:drecipe/core/api/api_client.dart';
import 'package:drecipe/core/api/api_helpers.dart';
import 'package:drecipe/features/common/data/models/responses/recipe_response.dart';
import 'package:drecipe/features/common/domain/entities/ingredient.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/discover_recipes/data/models/recipes_response.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/discover_recipes.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';

abstract class IDiscoverRecipesRepository {
  Future<Either<Failure, DiscoverRecipes>> getRecipes();
}

class DiscoverRecipesRepository implements IDiscoverRecipesRepository {
  final ApiClient _apiClient;

  DiscoverRecipesRepository(this._apiClient);

  @override
  Future<Either<Failure, DiscoverRecipes>> getRecipes() async {
    try {
      final List<RecipeDiscover> randomRecipes = [];
      final List<RecipeDiscover> popularRecipes = [];
      final List<RecipeDiscover> healthyRecipes = [];

      while (popularRecipes.length < 6 && healthyRecipes.length < 6) {
        final randomRecipesResponse = await _apiClient.getRandomRecipes(30);
        List<RecipeDiscover> recipesRandom =
            randomRecipesResponse.convertRecipes();
        for (var recipe in recipesRandom) {
          if (recipe.veryPopular == true) {
            popularRecipes.add(recipe);
          } else if (recipe.veryHealthy == true) {
            healthyRecipes.add(recipe);
          } else {
            randomRecipes.add(recipe);
          }
        }
      }

      // final recipes = DiscoverRecipes(
      //   randomRecipes: randomRecipes,
      //   popularRecipes: popularRecipes,
      //   healthyRecipe: healthyRecipes,
      // );

      // final randomRecipesResponse = await _apiClient.getRandomRecipes(10);
      // List<RecipeDiscover> recipesRandom =
      //     randomRecipesResponse.convertRecipes();

      final recipes = DiscoverRecipes(
        randomRecipes: randomRecipes,
        popularRecipes: popularRecipes,
        healthyRecipe: healthyRecipes,
      );

      return right(recipes);
    } on DioError catch (exception) {
      return left(exception.handleFailure());
    }
  }
}

extension RandomRecipesExtension on RecipesResponse {
  List<RecipeDiscover> convertRecipes() {
    List<RecipeDiscover> recipesList = [];
    for (var recipe in recipes) {
      recipesList.add(
        RecipeDiscover(
          id: recipe.id,
          title: recipe.title,
          image: recipe.image ?? '',
          servings: recipe.servings,
          readyInMinutes: recipe.readyInMinutes,
          vegetarian: recipe.vegetarian,
          vegan: recipe.vegan,
          glutenFree: recipe.glutenFree,
          veryPopular: recipe.veryPopular,
          veryHealthy: recipe.veryHealthy,
        ),
      );
    }
    return recipesList;
  }
}

extension IngredientsExtension on RecipeResponse {
  List<Ingredient> convertIngredients() {
    List<Ingredient> ingredientsList = [];
    for (var ingredient in extendedIngredients) {
      ingredientsList.add(
        Ingredient(
          id: ingredient.id,
          image: ingredient.image,
          original: ingredient.original,
        ),
      );
    }
    return ingredientsList;
  }
}
