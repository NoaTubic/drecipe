import 'package:drecipe/features/common/data/models/responses/recipe_details_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'random_recipes_response.freezed.dart';
part 'random_recipes_response.g.dart';

@freezed
class RandomRecipesResponse with _$RandomRecipesResponse {
  const factory RandomRecipesResponse({
    required List<RecipeDetailsResponse> recipes,
  }) = _RandomRecipesResponse;

  factory RandomRecipesResponse.fromJson(Map<String, dynamic> json) =>
      _$RandomRecipesResponseFromJson(json);
}
