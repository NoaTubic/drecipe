// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeDetailsResponse _$$_RecipeDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_RecipeDetailsResponse(
      nutrition:
          NutritionResponse.fromJson(json['nutrition'] as Map<String, dynamic>),
      analyzedInstructions: (json['analyzedInstructions'] as List<dynamic>)
          .map((e) => InstructionsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecipeDetailsResponseToJson(
        _$_RecipeDetailsResponse instance) =>
    <String, dynamic>{
      'nutrition': instance.nutrition,
      'analyzedInstructions': instance.analyzedInstructions,
    };
