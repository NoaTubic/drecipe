import 'package:drecipe/features/common/data/models/responses/recipe_response.dart';
import 'package:drecipe/features/discover_recipes/data/models/recipe_discover_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipes_response.freezed.dart';
part 'recipes_response.g.dart';

@freezed
class RecipesResponse with _$RecipesResponse {
  const factory RecipesResponse({
    required List<RecipeDiscoverResponse> recipes,
  }) = _RecipesResponse;

  factory RecipesResponse.fromJson(Map<String, dynamic> json) =>
      _$RecipesResponseFromJson(json);
}
