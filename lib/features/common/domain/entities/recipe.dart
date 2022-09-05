import 'package:drecipe/features/common/domain/entities/ingredient.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';

@freezed
class Recipe with _$Recipe {
  const factory Recipe({
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
    required bool vertHealthy,
    required String instructions,
    required List<Ingredient> extendedIngredients,
  }) = _Recipe;
}
