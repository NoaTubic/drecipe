import 'package:dartz/dartz.dart';
import 'package:drecipe/core/api/api_client.dart';
import 'package:drecipe/features/common/data/models/responses/recipe_response.dart';
import 'package:drecipe/features/common/domain/entities/ingredient.dart';
import 'package:drecipe/features/common/domain/entities/recipe.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/discover_recipes/data/models/recipes_response.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipes.dart';

abstract class IDiscoverRecipesRepository {
  Future<Either<Failure, Recipes>> getRandomRecipes();
}

class DiscoverRecipesRepository implements IDiscoverRecipesRepository {
  final ApiClient _apiClient;

  DiscoverRecipesRepository(this._apiClient);

  @override
  Future<Either<Failure, Recipes>> getRandomRecipes() async {
    try {
      final randomRecipesResponse = await _apiClient.getRandomRecipes();

      final randomRecipes =
          Recipes(recipes: randomRecipesResponse.convertRecipes());
      return right(randomRecipes);
    } catch (exception, stackTrace) {
      print('aaa');
      print(stackTrace);
      print(exception);
      return left(const Failure.serverErrorGeneral());
    }
  }
}

extension RandomRecipesExtension on RecipesResponse {
  List<Recipe> convertRecipes() {
    List<Recipe> recipeDetailsList = [];
    for (var recipe in recipes) {
      recipeDetailsList.add(
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
          instructions: recipe.instructions,
          extendedIngredients: recipe.convertIngredients(),
        ),
      );
    }
    return recipeDetailsList;
  }
}

extension IngredientsExtension on RecipeResponse {
  List<Ingredient> convertIngredients() {
    List<Ingredient> ingredientsList = [];
    for (var ingredient in extendedIngredients) {
      ingredientsList.add(
        Ingredient(
          id: ingredient.id,
          original: ingredient.original,
        ),
      );
    }
    return ingredientsList;
  }
}
