import 'package:drecipe/features/common/data/storage/hive_constants.dart';
import 'package:drecipe/features/recipe_details/data/models/responses/instructions_response.dart';
import 'package:drecipe/features/recipe_details/data/models/responses/recipe_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'instructions.freezed.dart';
part 'instructions.g.dart';

@freezed
@HiveType(
  typeId: HiveConstants.instructionsId,
  adapterName: HiveConstants.instructionsAdapter,
)
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
  typeId: HiveConstants.instructionStepId,
  adapterName: HiveConstants.instructionsStepAdapter,
)
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
  typeId: HiveConstants.equipmentAndIngredientsId,
  adapterName: HiveConstants.equipmentAndIngredientsAdapter,
)
class EquipmentAndIngredients with _$EquipmentAndIngredients {
  @JsonSerializable(explicitToJson: true)
  const factory EquipmentAndIngredients({
    @HiveField(0) required String name,
    @HiveField(1) String? image,
  }) = _EquipmentAndIngredients;

  factory EquipmentAndIngredients.fromJson(Map<String, dynamic> json) =>
      _$EquipmentAndIngredientsFromJson(json);
}

extension InstructionsExtension on RecipeResponse {
  List<Instructions> convertInstructions() {
    List<Instructions> instructionsList = [];
    for (var instruction in analyzedInstructions) {
      instructionsList.add(
        Instructions(
          name: instruction.name,
          steps: instruction.convertSteps(),
        ),
      );
    }
    return instructionsList;
  }
}

extension StepExtension on InstructionsResponse {
  List<InstructionStep> convertSteps() {
    List<InstructionStep> stepsList = [];
    for (var step in steps) {
      stepsList.add(InstructionStep(
        number: step.number.toString(),
        instruction: step.step,
        ingredients: step.convertIngredients(),
        equipment: step.convertEquipment(),
        stepDuration: step.length != null
            ? '${step.length?.number.toString()} ${step.length?.unit}'
            : null,
      ));
    }
    return stepsList;
  }
}

extension EquipmentAndIngredientsExtension on StepResponse {
  List<EquipmentAndIngredients> convertIngredients() {
    List<EquipmentAndIngredients> list = [];
    for (var element in ingredients!) {
      list.add(
          EquipmentAndIngredients(name: element.name, image: element.image));
    }
    return list;
  }

  List<EquipmentAndIngredients> convertEquipment() {
    List<EquipmentAndIngredients> list = [];
    for (var element in equipment!) {
      list.add(
          EquipmentAndIngredients(name: element.name, image: element.image));
    }
    return list;
  }
}
