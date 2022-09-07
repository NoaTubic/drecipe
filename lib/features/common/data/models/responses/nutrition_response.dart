import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition_response.freezed.dart';
part 'nutrition_response.g.dart';

@freezed
class NutritionResponse with _$NutritionResponse {
  const factory NutritionResponse({
    required List<NutrientResponse> nutrients,
    required CaloricBreakdownResponse caloricBreakdown,
    WeightPerServingResponse? weightPerServingResponse,
  }) = _NutritionResponse;

  factory NutritionResponse.fromJson(Map<String, dynamic> json) =>
      _$NutritionResponseFromJson(json);
}

@freezed
class NutrientResponse with _$NutrientResponse {
  const factory NutrientResponse({
    required String name,
    required double amount,
    required String unit,
  }) = _NutrientResponse;

  factory NutrientResponse.fromJson(Map<String, dynamic> json) =>
      _$NutrientResponseFromJson(json);
}

@freezed
class CaloricBreakdownResponse with _$CaloricBreakdownResponse {
  const factory CaloricBreakdownResponse({
    required double percentProtein,
    required double percentFat,
    required double percentCarbs,
  }) = _CaloricBreakdownResponse;

  factory CaloricBreakdownResponse.fromJson(Map<String, dynamic> json) =>
      _$CaloricBreakdownResponseFromJson(json);
}

@freezed
class WeightPerServingResponse with _$WeightPerServingResponse {
  const factory WeightPerServingResponse({
    required double amount,
    required String unit,
  }) = _WeightPerServingResponse;

  factory WeightPerServingResponse.fromJson(Map<String, dynamic> json) =>
      _$WeightPerServingResponseFromJson(json);
}
