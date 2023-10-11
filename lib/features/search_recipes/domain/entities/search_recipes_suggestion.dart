import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_recipes_suggestion.freezed.dart';

@freezed
class SearchRecipesSuggestion with _$SearchRecipesSuggestion {
  const factory SearchRecipesSuggestion({
    required String title,
    required String image,
  }) = _SearchRecipesSuggestion;
}
