import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_response.freezed.dart';
part 'ingredient_response.g.dart';

@freezed
class IngredientResponse with _$IngredientResponse {
  const factory IngredientResponse({
    required int id,
    String? image,
    required String original,
    // required double amount,
    // required String unit,
    // required MeasuresResponse measures,
  }) = _IngredientResponse;

  factory IngredientResponse.fromJson(Map<String, dynamic> json) =>
      _$IngredientResponseFromJson(json);
}
