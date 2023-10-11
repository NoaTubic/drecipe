import 'package:freezed_annotation/freezed_annotation.dart';

part 'instructions_response.freezed.dart';
part 'instructions_response.g.dart';

@freezed
class InstructionsResponse with _$InstructionsResponse {
  const factory InstructionsResponse({
    String? name,
    required List<StepResponse> steps,
  }) = _InstructionsResponse;

  factory InstructionsResponse.fromJson(Map<String, dynamic> json) =>
      _$InstructionsResponseFromJson(json);
}

@freezed
class StepResponse with _$StepResponse {
  const factory StepResponse({
    required int number,
    required String step,
    List<InstructionsEquipmentAndIngredientResponse>? ingredients,
    List<InstructionsEquipmentAndIngredientResponse>? equipment,
    LengthResponse? length,
  }) = _StepResponse;

  factory StepResponse.fromJson(Map<String, dynamic> json) =>
      _$StepResponseFromJson(json);
}

@freezed
class InstructionsEquipmentAndIngredientResponse
    with _$InstructionsEquipmentAndIngredientResponse {
  const factory InstructionsEquipmentAndIngredientResponse({
    required String name,
    String? image,
  }) = _InstructionsEquipmentAndIngredientResponse;

  factory InstructionsEquipmentAndIngredientResponse.fromJson(
          Map<String, dynamic> json) =>
      _$InstructionsEquipmentAndIngredientResponseFromJson(json);
}

@freezed
class LengthResponse with _$LengthResponse {
  const factory LengthResponse({
    required int number,
    required String unit,
  }) = _LengthResponse;

  factory LengthResponse.fromJson(Map<String, dynamic> json) =>
      _$LengthResponseFromJson(json);
}
