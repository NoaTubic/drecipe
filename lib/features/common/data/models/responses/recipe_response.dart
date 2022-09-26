import 'package:drecipe/features/common/data/models/responses/ingredient_response.dart';
import 'package:drecipe/features/common/data/models/responses/instructions_response.dart';
import 'package:drecipe/features/common/data/models/responses/nutrition_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_response.freezed.dart';
part 'recipe_response.g.dart';

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
    required String instructions,
    required List<IngredientResponse> extendedIngredients,
    required NutritionResponse nutrition,
    required List<InstructionsResponse> analyzedInstructions,
  }) = _RecipeResponse;

  factory RecipeResponse.fromJson(Map<String, dynamic> json) =>
      _$RecipeResponseFromJson(json);
}
