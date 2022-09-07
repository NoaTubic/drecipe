import 'package:freezed_annotation/freezed_annotation.dart';

part 'instructions.freezed.dart';

@freezed
class Instructions with _$Instructions {
  const factory Instructions({
    String? name,
    required List<InstructionStep> steps,
  }) = _Instructions;
}

@freezed
class InstructionStep with _$InstructionStep {
  const factory InstructionStep({
    required String number,
    required String instruction,
    List<EquipmentAndIngredients>? ingredients,
    List<EquipmentAndIngredients>? equipment,
    String? stepDuration,
  }) = _Step;
}

@freezed
class EquipmentAndIngredients with _$EquipmentAndIngredients {
  const factory EquipmentAndIngredients({
    required String name,
    String? image,
  }) = _EquipmentAndIngredients;
}
