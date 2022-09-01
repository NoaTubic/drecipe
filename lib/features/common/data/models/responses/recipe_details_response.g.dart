// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeDetailsResponse _$$_RecipeDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_RecipeDetailsResponse(
      id: json['id'] as int,
      title: json['title'] as String,
      servings: json['servings'] as int,
      image: json['image'] as String,
      readyInMinutes: json['readyInMinutes'] as String,
      dishTypes:
          (json['dishTypes'] as List<dynamic>).map((e) => e as String).toList(),
      vegetarian: json['vegetarian'] as bool,
      vegan: json['vegan'] as bool,
      glutenFree: json['glutenFree'] as bool,
      veryPopular: json['veryPopular'] as bool,
      instructions: json['instructions'] as String,
      extendedIngredients: (json['extendedIngredients'] as List<dynamic>)
          .map((e) => IngredientResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      serving: (json['serving'] as num).toDouble(),
    );

Map<String, dynamic> _$$_RecipeDetailsResponseToJson(
        _$_RecipeDetailsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'servings': instance.servings,
      'image': instance.image,
      'readyInMinutes': instance.readyInMinutes,
      'dishTypes': instance.dishTypes,
      'vegetarian': instance.vegetarian,
      'vegan': instance.vegan,
      'glutenFree': instance.glutenFree,
      'veryPopular': instance.veryPopular,
      'instructions': instance.instructions,
      'extendedIngredients': instance.extendedIngredients,
      'serving': instance.serving,
    };
