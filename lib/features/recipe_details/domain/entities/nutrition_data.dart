import 'package:drecipe/core/database/database_constants.dart';
import 'package:drecipe/features/recipe_details/data/models/responses/nutrition_response.dart';
import 'package:drecipe/features/recipe_details/data/models/responses/recipe_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'nutrition_data.freezed.dart';
part 'nutrition_data.g.dart';

@freezed
@HiveType(
    typeId: DatabaseConstants.nutritionData,
    adapterName: 'NutritionDataAdapter')
class NutritionData with _$NutritionData {
  @JsonSerializable(explicitToJson: true)
  const factory NutritionData({
    @HiveField(0) required List<Nutrient> nutrients,
    @HiveField(1) required double percentProtein,
    @HiveField(2) required double percentFat,
    @HiveField(3) required double percentCarbs,
    @HiveField(4) String? weightPerServing,
  }) = _NutritionData;

  factory NutritionData.fromJson(Map<String, dynamic> json) =>
      _$NutritionDataFromJson(json);
}

@freezed
@HiveType(typeId: DatabaseConstants.nutrient, adapterName: 'NutrientAdapter')
class Nutrient with _$Nutrient {
  @JsonSerializable(explicitToJson: true)
  const factory Nutrient({
    @HiveField(0) required String name,
    @HiveField(1) required String amount,
  }) = _Nutrient;

  factory Nutrient.fromJson(Map<String, dynamic> json) =>
      _$NutrientFromJson(json);
}

extension NutritionDataExtension on RecipeResponse {
  NutritionData convertNutritionData() {
    final nutritionData = NutritionData(
      nutrients: nutrition.convertNutrients(),
      percentProtein: nutrition.caloricBreakdown.percentProtein,
      percentFat: nutrition.caloricBreakdown.percentFat,
      percentCarbs: nutrition.caloricBreakdown.percentCarbs,
      weightPerServing:
          '${nutrition.weightPerServingResponse?.amount} + ${nutrition.weightPerServingResponse?.unit}',
    );
    return nutritionData;
  }
}

extension NutrientsExtension on NutritionResponse {
  List<Nutrient> convertNutrients() {
    List<Nutrient> nutrientsList = [];
    for (var nutrient in nutrients) {
      nutrientsList.add(Nutrient(
          name: nutrient.name,
          amount: '${nutrient.amount.round()} ${nutrient.unit}'));
    }
    return nutrientsList;
  }
}
