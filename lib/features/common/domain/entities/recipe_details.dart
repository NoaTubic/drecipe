import 'package:drecipe/features/common/domain/entities/ingredient.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_details.freezed.dart';

@freezed
class RecipeDetails with _$RecipeDetails {
  const factory RecipeDetails({
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
    required List<Ingredient> extendedIngredients,
    required double serving,
  }) = _RecipeDetails;
}
