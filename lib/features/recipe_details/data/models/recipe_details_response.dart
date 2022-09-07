import 'package:drecipe/features/common/data/models/responses/instructions_response.dart';
import 'package:drecipe/features/common/data/models/responses/nutrition_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_details_response.freezed.dart';
part 'recipe_details_response.g.dart';

@freezed
class RecipeDetailsResponse with _$RecipeDetailsResponse {
  const factory RecipeDetailsResponse({
    required NutritionResponse nutrition,
    required List<InstructionsResponse> analyzedInstructions,
  }) = _RecipeDetailsResponse;

  factory RecipeDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$RecipeDetailsResponseFromJson(json);
}
