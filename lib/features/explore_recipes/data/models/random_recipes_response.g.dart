// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_recipes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RandomRecipesResponse _$$_RandomRecipesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_RandomRecipesResponse(
      recipes: (json['recipes'] as List<dynamic>)
          .map((e) => RecipeDetailsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RandomRecipesResponseToJson(
        _$_RandomRecipesResponse instance) =>
    <String, dynamic>{
      'recipes': instance.recipes,
    };
