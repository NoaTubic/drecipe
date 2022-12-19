import 'package:drecipe/core/database/database_constants.dart';
import 'package:drecipe/features/recipe_details/domain/entities/ingredient.dart';
import 'package:drecipe/features/recipe_details/domain/entities/instructions.dart';
import 'package:drecipe/features/recipe_details/domain/entities/nutrition_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'recipe.freezed.dart';
part 'recipe.g.dart';

@freezed
@HiveType(typeId: DatabaseConstants.recipe, adapterName: 'RecipeAdapter')
class Recipe with _$Recipe {
  @JsonSerializable(explicitToJson: true)
  const factory Recipe({
    @HiveField(0) required int id,
    @HiveField(1) required String title,
    @HiveField(2) required int servings,
    @HiveField(3) String? image,
    @HiveField(4) required int readyInMinutes,
    @HiveField(5) List<String>? dishTypes,
    @HiveField(6) required bool vegetarian,
    @HiveField(7) required bool vegan,
    @HiveField(8) required bool glutenFree,
    @HiveField(9) required bool veryPopular,
    @HiveField(10) required bool veryHealthy,
    // required String instructions,
    @HiveField(11) List<Ingredient>? ingredients,
    // List<Instructions>? instructionsDetailed,
    @HiveField(12) NutritionData? nutritionData,
    @HiveField(13) List<Instructions>? instructionsDetailed,
  }) = _Recipe;
  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}
