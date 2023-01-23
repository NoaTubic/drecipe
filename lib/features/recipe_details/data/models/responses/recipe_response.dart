import 'package:drecipe/features/recipe_details/data/models/responses/ingredient_response.dart';
import 'package:drecipe/features/recipe_details/data/models/responses/instructions_response.dart';
import 'package:drecipe/features/recipe_details/data/models/responses/nutrition_response.dart';
import 'package:drecipe/features/recipe_details/domain/entities/ingredient.dart';
import 'package:drecipe/features/recipe_details/domain/entities/instructions.dart';
import 'package:drecipe/features/recipe_details/domain/entities/nutrition_data.dart';
import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_response.freezed.dart';
part 'recipe_response.g.dart';

@freezed
class RecipesResponse with _$RecipesResponse {
  const factory RecipesResponse({
    required List<RecipeResponse> results,
  }) = _RecipesResponse;

  factory RecipesResponse.fromJson(Map<String, dynamic> json) =>
      _$RecipesResponseFromJson(json);
}

@freezed
class RecipeResponse with _$RecipeResponse {
  const factory RecipeResponse({
    required int id,
    required String title,
    required int servings,
    String? image,
    required int readyInMinutes,
    required List<String> dishTypes,
    required bool vegetarian,
    required bool vegan,
    required bool glutenFree,
    required bool veryPopular,
    required bool veryHealthy,
    required List<IngredientResponse> extendedIngredients,
    required NutritionResponse nutrition,
    required List<InstructionsResponse> analyzedInstructions,
  }) = _RecipeResponse;

  factory RecipeResponse.fromJson(Map<String, dynamic> json) =>
      _$RecipeResponseFromJson(json);
}

extension RecipesExtension on RecipesResponse {
  List<Recipe> convertRecipes() {
    List<Recipe> recipesList = [];
    for (var recipe in results) {
      recipesList.add(
        Recipe(
          id: recipe.id,
          title: recipe.title,
          image: recipe.image ?? '',
          servings: recipe.servings,
          readyInMinutes: recipe.readyInMinutes,
          dishTypes: recipe.dishTypes,
          vegetarian: recipe.vegetarian,
          vegan: recipe.vegan,
          glutenFree: recipe.glutenFree,
          veryPopular: recipe.veryPopular,
          veryHealthy: recipe.veryHealthy,
          ingredients: recipe.convertIngredients(),
          nutritionData:
              recipe.convertNutritionData(numberOfServings: recipe.servings),
          instructionsDetailed: recipe.convertInstructions(),
        ),
      );
    }
    return recipesList;
  }
}
