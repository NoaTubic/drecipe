import 'package:drecipe/core/database/database_constants.dart';
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
