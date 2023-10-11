import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_recipes_results.freezed.dart';
part 'search_recipes_results.g.dart';

@freezed
class SearchRecipesResultsResponse with _$SearchRecipesResultsResponse {
  const factory SearchRecipesResultsResponse({
    required List<SearchRecipesResultResponse> results,
  }) = _SearchRecipesResultsResponse;

  factory SearchRecipesResultsResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchRecipesResultsResponseFromJson(json);
}

@freezed
class SearchRecipesResultResponse with _$SearchRecipesResultResponse {
  const factory SearchRecipesResultResponse({
    required int id,
    required String title,
    required String image,
  }) = _SearchRecipesResultResponse;

  factory SearchRecipesResultResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchRecipesResultResponseFromJson(json);
}
