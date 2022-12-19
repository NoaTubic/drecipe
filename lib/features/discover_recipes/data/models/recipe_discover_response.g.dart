// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_discover_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipesDiscoverResponse _$$_RecipesDiscoverResponseFromJson(
        Map<String, dynamic> json) =>
    _$_RecipesDiscoverResponse(
      results: (json['results'] as List<dynamic>)
          .map(
              (e) => RecipeDiscoverResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecipesDiscoverResponseToJson(
        _$_RecipesDiscoverResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$_RecipeDiscoverResponse _$$_RecipeDiscoverResponseFromJson(
        Map<String, dynamic> json) =>
    _$_RecipeDiscoverResponse(
      id: json['id'] as int,
      title: json['title'] as String,
      servings: json['servings'] as int,
      image: json['image'] as String?,
      readyInMinutes: json['readyInMinutes'] as int,
      vegetarian: json['vegetarian'] as bool,
      vegan: json['vegan'] as bool,
      glutenFree: json['glutenFree'] as bool,
      veryPopular: json['veryPopular'] as bool,
      veryHealthy: json['veryHealthy'] as bool,
    );

Map<String, dynamic> _$$_RecipeDiscoverResponseToJson(
        _$_RecipeDiscoverResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'servings': instance.servings,
      'image': instance.image,
      'readyInMinutes': instance.readyInMinutes,
      'vegetarian': instance.vegetarian,
      'vegan': instance.vegan,
      'glutenFree': instance.glutenFree,
      'veryPopular': instance.veryPopular,
      'veryHealthy': instance.veryHealthy,
    };
