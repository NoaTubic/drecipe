// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipesResponse _$$_RecipesResponseFromJson(Map<String, dynamic> json) =>
    _$_RecipesResponse(
      results: (json['results'] as List<dynamic>)
          .map((e) => RecipeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecipesResponseToJson(_$_RecipesResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$_RecipeResponse _$$_RecipeResponseFromJson(Map<String, dynamic> json) =>
    _$_RecipeResponse(
      id: json['id'] as int,
      title: json['title'] as String,
      servings: json['servings'] as int,
      image: json['image'] as String?,
      readyInMinutes: json['readyInMinutes'] as int,
      dishTypes:
          (json['dishTypes'] as List<dynamic>).map((e) => e as String).toList(),
      vegetarian: json['vegetarian'] as bool,
      vegan: json['vegan'] as bool,
      glutenFree: json['glutenFree'] as bool,
      veryPopular: json['veryPopular'] as bool,
      veryHealthy: json['veryHealthy'] as bool,
      extendedIngredients: (json['extendedIngredients'] as List<dynamic>)
          .map((e) => IngredientResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      nutrition:
          NutritionResponse.fromJson(json['nutrition'] as Map<String, dynamic>),
      analyzedInstructions: (json['analyzedInstructions'] as List<dynamic>)
          .map((e) => InstructionsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecipeResponseToJson(_$_RecipeResponse instance) =>
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
      'veryHealthy': instance.veryHealthy,
      'extendedIngredients': instance.extendedIngredients,
      'nutrition': instance.nutrition,
      'analyzedInstructions': instance.analyzedInstructions,
    };
