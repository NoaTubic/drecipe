// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_recipes_suggestions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchRecipesSuggestionsResponse
    _$$_SearchRecipesSuggestionsResponseFromJson(Map<String, dynamic> json) =>
        _$_SearchRecipesSuggestionsResponse(
          suggestions: (json['suggestions'] as List<dynamic>)
              .map((e) => SearchRecipesSuggestionResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_SearchRecipesSuggestionsResponseToJson(
        _$_SearchRecipesSuggestionsResponse instance) =>
    <String, dynamic>{
      'suggestions': instance.suggestions,
    };

_$_SearchRecipesSuggestionResponse _$$_SearchRecipesSuggestionResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SearchRecipesSuggestionResponse(
      id: json['id'] as int,
      title: json['title'] as String,
      imageType: json['imageType'] as String,
    );

Map<String, dynamic> _$$_SearchRecipesSuggestionResponseToJson(
        _$_SearchRecipesSuggestionResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'imageType': instance.imageType,
    };
