// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NutritionResponse _$$_NutritionResponseFromJson(Map<String, dynamic> json) =>
    _$_NutritionResponse(
      nutrients: (json['nutrients'] as List<dynamic>)
          .map((e) => NutrientResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      caloricBreakdown: CaloricBreakdownResponse.fromJson(
          json['caloricBreakdown'] as Map<String, dynamic>),
      weightPerServingResponse: json['weightPerServingResponse'] == null
          ? null
          : WeightPerServingResponse.fromJson(
              json['weightPerServingResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NutritionResponseToJson(
        _$_NutritionResponse instance) =>
    <String, dynamic>{
      'nutrients': instance.nutrients,
      'caloricBreakdown': instance.caloricBreakdown,
      'weightPerServingResponse': instance.weightPerServingResponse,
    };

_$_NutrientResponse _$$_NutrientResponseFromJson(Map<String, dynamic> json) =>
    _$_NutrientResponse(
      name: json['name'] as String,
      amount: (json['amount'] as num).toDouble(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$_NutrientResponseToJson(_$_NutrientResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
      'unit': instance.unit,
    };

_$_CaloricBreakdownResponse _$$_CaloricBreakdownResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CaloricBreakdownResponse(
      percentProtein: (json['percentProtein'] as num).toDouble(),
      percentFat: (json['percentFat'] as num).toDouble(),
      percentCarbs: (json['percentCarbs'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CaloricBreakdownResponseToJson(
        _$_CaloricBreakdownResponse instance) =>
    <String, dynamic>{
      'percentProtein': instance.percentProtein,
      'percentFat': instance.percentFat,
      'percentCarbs': instance.percentCarbs,
    };

_$_WeightPerServingResponse _$$_WeightPerServingResponseFromJson(
        Map<String, dynamic> json) =>
    _$_WeightPerServingResponse(
      amount: (json['amount'] as num).toDouble(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$_WeightPerServingResponseToJson(
        _$_WeightPerServingResponse instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'unit': instance.unit,
    };
