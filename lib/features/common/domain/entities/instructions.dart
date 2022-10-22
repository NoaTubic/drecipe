import 'package:drecipe/core/database/database_constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'instructions.freezed.dart';
part 'instructions.g.dart';

@freezed
@HiveType(
    typeId: DatabaseConstants.instructions, adapterName: 'InstructionsAdapter')
class Instructions with _$Instructions {
  @JsonSerializable(explicitToJson: true)
  const factory Instructions({
    @HiveField(0) String? name,
    @HiveField(1) required List<InstructionStep> steps,
  }) = _Instructions;

  factory Instructions.fromJson(Map<String, dynamic> json) =>
      _$InstructionsFromJson(json);
}

@freezed
@HiveType(
    typeId: DatabaseConstants.instructionStep,
    adapterName: 'InstructionStepAdapter')
class InstructionStep with _$InstructionStep {
  @JsonSerializable(explicitToJson: true)
  const factory InstructionStep({
    @HiveField(0) required String number,
    @HiveField(1) required String instruction,
    @HiveField(2) List<EquipmentAndIngredients>? ingredients,
    @HiveField(3) List<EquipmentAndIngredients>? equipment,
    String? stepDuration,
  }) = _Step;

  factory InstructionStep.fromJson(Map<String, dynamic> json) =>
      _$InstructionStepFromJson(json);
}

@freezed
@HiveType(
    typeId: DatabaseConstants.equipmentAndIngredients,
    adapterName: 'EquipmentAndIngredientsAdapter')
class EquipmentAndIngredients with _$EquipmentAndIngredients {
  @JsonSerializable(explicitToJson: true)
  const factory EquipmentAndIngredients({
    @HiveField(0) required String name,
    @HiveField(1) String? image,
  }) = _EquipmentAndIngredients;

  factory EquipmentAndIngredients.fromJson(Map<String, dynamic> json) =>
      _$EquipmentAndIngredientsFromJson(json);
}
