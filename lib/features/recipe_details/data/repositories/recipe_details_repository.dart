import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:drecipe/features/common/data/api/api_client.dart';
import 'package:drecipe/features/common/data/api/api_helpers.dart';
import 'package:drecipe/features/common/data/api/providers.dart';
import 'package:drecipe/features/common/domain/utils/either_failure_or.dart';
import 'package:drecipe/features/recipe_details/domain/entities/ingredient.dart';
import 'package:drecipe/features/recipe_details/domain/entities/instructions.dart';
import 'package:drecipe/features/recipe_details/domain/entities/nutrition_data.dart';
import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final recipeDetailsRepositoryProvider = Provider<RecipeDetailsRepository>(
  (ref) => RecipeDetailsRepositoryImpl(
    ref.read(apiClientProvider),
  ),
);

abstract class RecipeDetailsRepository {
  EitherFailureOr<Recipe> getRecipeDetails({required int id});
}

class RecipeDetailsRepositoryImpl implements RecipeDetailsRepository {
  final ApiClient _apiClient;

  RecipeDetailsRepositoryImpl(this._apiClient);

  @override
  EitherFailureOr<Recipe> getRecipeDetails({required int id}) async {
    try {
      final recipeResponse = await _apiClient.getRecipeDetails(id: id);
      final recipe = Recipe(
        id: recipeResponse.id,
        title: recipeResponse.title,
        servings: recipeResponse.servings,
        image: recipeResponse.image,
        readyInMinutes: recipeResponse.readyInMinutes,
        dishTypes: recipeResponse.dishTypes,
        vegetarian: recipeResponse.vegetarian,
        vegan: recipeResponse.vegan,
        glutenFree: recipeResponse.glutenFree,
        veryPopular: recipeResponse.veryPopular,
        veryHealthy: recipeResponse.veryHealthy,
        ingredients: recipeResponse.convertIngredients(),
        nutritionData: recipeResponse.convertNutritionData(
            numberOfServings: recipeResponse.servings),
        instructionsDetailed: recipeResponse.convertInstructions(),
      );
      return right(recipe);
    } on DioError catch (exception) {
      return left(
        exception.handleFailure(),
      );
    }
  }
}
