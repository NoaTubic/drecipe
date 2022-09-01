import 'package:freezed_annotation/freezed_annotation.dart';
part 'nutrition_data.freezed.dart';

@freezed
class NutritionData with _$NutritionData {
  const factory NutritionData({
    required List<Nutrient> nutrients,
    required double percentProtein,
    required double percentFat,
    required double percentCarbs,
    required String weightPerServing,
  }) = _NutritionData;
}

@freezed
class Nutrient with _$Nutrient {
  const factory Nutrient({
    required String name,
    required double amount,
    required String unit,
  }) = _Nutrient;
}
