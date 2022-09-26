// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipesResponse _$$_RecipesResponseFromJson(Map<String, dynamic> json) =>
    _$_RecipesResponse(
      recipes: (json['recipes'] as List<dynamic>)
          .map(
              (e) => RecipeDiscoverResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecipesResponseToJson(_$_RecipesResponse instance) =>
    <String, dynamic>{
      'recipes': instance.recipes,
    };
