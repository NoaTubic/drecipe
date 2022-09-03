import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_response.freezed.dart';
part 'ingredient_response.g.dart';

@freezed
class IngredientResponse with _$IngredientResponse {
  const factory IngredientResponse({
    required int id,
    // required String image,
    required String original,
    // required double amount,
    // required String unit,
    // required MeasuresResponse measures,
  }) = _IngredientResponse;

  factory IngredientResponse.fromJson(Map<String, dynamic> json) =>
      _$IngredientResponseFromJson(json);
}

// @freezed
// class MeasuresResponse with _$MeasuresResponse {
//   const factory MeasuresResponse({
//     required UsMeasureResponse us,
//     required MetricMeasureResponse metric,
//   }) = _MeasuresResponse;

//   factory MeasuresResponse.fromJson(Map<String, dynamic> json) =>
//       _$MeasuresResponseFromJson(json);
// }

// @freezed
// class UsMeasureResponse with _$UsMeasureResponse {
//   const factory UsMeasureResponse({
//     required double amount,
//     required String unitShort,
//   }) = _UsMeasureResponse;

//   factory UsMeasureResponse.fromJson(Map<String, dynamic> json) =>
//       _$UsMeasureResponseFromJson(json);
// }

// @freezed
// class MetricMeasureResponse with _$MetricMeasureResponse {
//   const factory MetricMeasureResponse({
//     required double amount,
//     required String unitShort,
//   }) = _MetricMeasureResponse;

//   factory MetricMeasureResponse.fromJson(Map<String, dynamic> json) =>
//       _$MetricMeasureResponseFromJson(json);
// }
