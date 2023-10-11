// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instructions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstructionsResponse _$$_InstructionsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_InstructionsResponse(
      name: json['name'] as String?,
      steps: (json['steps'] as List<dynamic>)
          .map((e) => StepResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InstructionsResponseToJson(
        _$_InstructionsResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'steps': instance.steps,
    };

_$_StepResponse _$$_StepResponseFromJson(Map<String, dynamic> json) =>
    _$_StepResponse(
      number: json['number'] as int,
      step: json['step'] as String,
      ingredients: (json['ingredients'] as List<dynamic>?)
          ?.map((e) => InstructionsEquipmentAndIngredientResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      equipment: (json['equipment'] as List<dynamic>?)
          ?.map((e) => InstructionsEquipmentAndIngredientResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      length: json['length'] == null
          ? null
          : LengthResponse.fromJson(json['length'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StepResponseToJson(_$_StepResponse instance) =>
    <String, dynamic>{
      'number': instance.number,
      'step': instance.step,
      'ingredients': instance.ingredients,
      'equipment': instance.equipment,
      'length': instance.length,
    };

_$_InstructionsEquipmentAndIngredientResponse
    _$$_InstructionsEquipmentAndIngredientResponseFromJson(
            Map<String, dynamic> json) =>
        _$_InstructionsEquipmentAndIngredientResponse(
          name: json['name'] as String,
          image: json['image'] as String?,
        );

Map<String, dynamic> _$$_InstructionsEquipmentAndIngredientResponseToJson(
        _$_InstructionsEquipmentAndIngredientResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
    };

_$_LengthResponse _$$_LengthResponseFromJson(Map<String, dynamic> json) =>
    _$_LengthResponse(
      number: json['number'] as int,
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$_LengthResponseToJson(_$_LengthResponse instance) =>
    <String, dynamic>{
      'number': instance.number,
      'unit': instance.unit,
    };
