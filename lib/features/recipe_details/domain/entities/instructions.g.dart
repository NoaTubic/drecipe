// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instructions.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InstructionsAdapter extends TypeAdapter<Instructions> {
  @override
  final int typeId = 5;

  @override
  Instructions read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Instructions(
      name: fields[0] as String?,
      steps: (fields[1] as List).cast<InstructionStep>(),
    );
  }

  @override
  void write(BinaryWriter writer, Instructions obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.steps);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InstructionsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class InstructionStepAdapter extends TypeAdapter<InstructionStep> {
  @override
  final int typeId = 6;

  @override
  InstructionStep read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InstructionStep(
      number: fields[0] as String,
      instruction: fields[1] as String,
      ingredients: (fields[2] as List?)?.cast<EquipmentAndIngredients>(),
      equipment: (fields[3] as List?)?.cast<EquipmentAndIngredients>(),
    );
  }

  @override
  void write(BinaryWriter writer, InstructionStep obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.number)
      ..writeByte(1)
      ..write(obj.instruction)
      ..writeByte(2)
      ..write(obj.ingredients)
      ..writeByte(3)
      ..write(obj.equipment);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InstructionStepAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EquipmentAndIngredientsAdapter
    extends TypeAdapter<EquipmentAndIngredients> {
  @override
  final int typeId = 7;

  @override
  EquipmentAndIngredients read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EquipmentAndIngredients(
      name: fields[0] as String,
      image: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, EquipmentAndIngredients obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EquipmentAndIngredientsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Instructions _$$_InstructionsFromJson(Map<String, dynamic> json) =>
    _$_Instructions(
      name: json['name'] as String?,
      steps: (json['steps'] as List<dynamic>)
          .map((e) => InstructionStep.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InstructionsToJson(_$_Instructions instance) =>
    <String, dynamic>{
      'name': instance.name,
      'steps': instance.steps.map((e) => e.toJson()).toList(),
    };

_$_Step _$$_StepFromJson(Map<String, dynamic> json) => _$_Step(
      number: json['number'] as String,
      instruction: json['instruction'] as String,
      ingredients: (json['ingredients'] as List<dynamic>?)
          ?.map((e) =>
              EquipmentAndIngredients.fromJson(e as Map<String, dynamic>))
          .toList(),
      equipment: (json['equipment'] as List<dynamic>?)
          ?.map((e) =>
              EquipmentAndIngredients.fromJson(e as Map<String, dynamic>))
          .toList(),
      stepDuration: json['stepDuration'] as String?,
    );

Map<String, dynamic> _$$_StepToJson(_$_Step instance) => <String, dynamic>{
      'number': instance.number,
      'instruction': instance.instruction,
      'ingredients': instance.ingredients?.map((e) => e.toJson()).toList(),
      'equipment': instance.equipment?.map((e) => e.toJson()).toList(),
      'stepDuration': instance.stepDuration,
    };

_$_EquipmentAndIngredients _$$_EquipmentAndIngredientsFromJson(
        Map<String, dynamic> json) =>
    _$_EquipmentAndIngredients(
      name: json['name'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_EquipmentAndIngredientsToJson(
        _$_EquipmentAndIngredients instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
    };
