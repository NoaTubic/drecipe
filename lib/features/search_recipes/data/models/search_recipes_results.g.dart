// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_recipes_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchRecipesResultsResponse _$$_SearchRecipesResultsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SearchRecipesResultsResponse(
      results: (json['results'] as List<dynamic>)
          .map((e) =>
              SearchRecipesResultResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchRecipesResultsResponseToJson(
        _$_SearchRecipesResultsResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$_SearchRecipesResultResponse _$$_SearchRecipesResultResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SearchRecipesResultResponse(
      id: json['id'] as int,
      title: json['title'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_SearchRecipesResultResponseToJson(
        _$_SearchRecipesResultResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };
