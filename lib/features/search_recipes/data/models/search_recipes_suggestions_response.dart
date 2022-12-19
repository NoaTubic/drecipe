import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_recipes_suggestions_response.freezed.dart';
part 'search_recipes_suggestions_response.g.dart';

@freezed
class SearchRecipesSuggestionsResponse with _$SearchRecipesSuggestionsResponse {
  const factory SearchRecipesSuggestionsResponse({
    required List<SearchRecipesSuggestionResponse> suggestions,
  }) = _SearchRecipesSuggestionsResponse;

  factory SearchRecipesSuggestionsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$SearchRecipesSuggestionsResponseFromJson(json);
}

@freezed
class SearchRecipesSuggestionResponse with _$SearchRecipesSuggestionResponse {
  const factory SearchRecipesSuggestionResponse({
    required int id,
    required String title,
    required String imageType,
  }) = _SearchRecipesSuggestionResponse;

  factory SearchRecipesSuggestionResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchRecipesSuggestionResponseFromJson(json);
}
