import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:drecipe/core/api/api_client.dart';
import 'package:drecipe/core/api/api_helpers.dart';
import 'package:drecipe/features/common/data/models/responses/recipe_response.dart';
import 'package:drecipe/features/common/domain/entities/ingredient.dart';
import 'package:drecipe/features/common/domain/entities/recipe.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/discover_recipes/data/models/recipes_response.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/discover_recipes.dart';

abstract class IDiscoverRecipesRepository {
  Future<Either<Failure, DiscoverRecipes>> getRecipes();
}

class DiscoverRecipesRepository implements IDiscoverRecipesRepository {
  final ApiClient _apiClient;

  DiscoverRecipesRepository(this._apiClient);

  @override
  Future<Either<Failure, DiscoverRecipes>> getRecipes() async {
    try {
      final List<Recipe> randomRecipes = [];
      final List<Recipe> popularRecipes = [];
      final List<Recipe> healthyRecipes = [];

      while (popularRecipes.length < 6 && healthyRecipes.length < 6) {
        final randomRecipesResponse = await _apiClient.getRandomRecipes(30);
        List<Recipe> recipesRandom = randomRecipesResponse.convertRecipes();
        for (var recipe in recipesRandom) {
          if (recipe.veryPopular == true) {
            popularRecipes.add(recipe);
          } else if (recipe.vertHealthy == true) {
            healthyRecipes.add(recipe);
          } else {
            randomRecipes.add(recipe);
          }
        }
      }

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
  List<Recipe> convertRecipes() {
    List<Recipe> recipesList = [];
    for (var recipe in recipes) {
      recipesList.add(
        Recipe(
          id: recipe.id,
          title: recipe.title,
          servings: recipe.servings,
          image: recipe.image,
          readyInMinutes: recipe.readyInMinutes,
          dishTypes: recipe.dishTypes,
          vegetarian: recipe.vegetarian,
          vegan: recipe.vegan,
          glutenFree: recipe.glutenFree,
          veryPopular: recipe.veryPopular,
          vertHealthy: recipe.veryHealthy,
          instructions: recipe.instructions,
          ingredients: recipe.convertIngredients(),
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
