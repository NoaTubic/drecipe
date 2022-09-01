import 'package:drecipe/features/common/data/models/responses/ingredient_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_details_response.freezed.dart';
part 'recipe_details_response.g.dart';

@freezed
class RecipeDetailsResponse with _$RecipeDetailsResponse {
  const factory RecipeDetailsResponse({
    required int id,
    required String title,
    required int servings,
    required String image,
    required String readyInMinutes,
    required List<String> dishTypes,
    required bool vegetarian,
    required bool vegan,
    required bool glutenFree,
    required bool veryPopular,
    required String instructions,
    required List<IngredientResponse> extendedIngredients,
    required double serving,
  }) = _RecipeDetailsResponse;

  factory RecipeDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$RecipeDetailsResponseFromJson(json);
}
