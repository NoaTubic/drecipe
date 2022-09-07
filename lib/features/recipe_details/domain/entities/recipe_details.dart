import 'package:drecipe/features/common/domain/entities/instructions.dart';
import 'package:drecipe/features/common/domain/entities/nutrition_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_details.freezed.dart';

@freezed
class RecipeDetails with _$RecipeDetails {
  const factory RecipeDetails({
    required NutritionData nutritionData,
    required List<Instructions> instructions,
  }) = _RecipeDetails;
}
