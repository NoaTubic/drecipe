// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_recommended_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeRecommendedResponse _$$_RecipeRecommendedResponseFromJson(
        Map<String, dynamic> json) =>
    _$_RecipeRecommendedResponse(
      id: json['id'] as int,
      imageType: json['imageType'] as String,
      title: json['title'] as String,
      readyInMinutes: json['readyInMinutes'] as int,
      servings: json['servings'] as int,
    );

Map<String, dynamic> _$$_RecipeRecommendedResponseToJson(
        _$_RecipeRecommendedResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageType': instance.imageType,
      'title': instance.title,
      'readyInMinutes': instance.readyInMinutes,
      'servings': instance.servings,
    };
