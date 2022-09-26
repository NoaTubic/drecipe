import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_discover_response.freezed.dart';
part 'recipe_discover_response.g.dart';

@freezed
class RecipeDiscoverResponse with _$RecipeDiscoverResponse {
  const factory RecipeDiscoverResponse({
    required int id,
    required String title,
    required int servings,
    String? image,
    required int readyInMinutes,
    required bool vegetarian,
    required bool vegan,
    required bool glutenFree,
    required bool veryPopular,
    required bool veryHealthy,
  }) = _RecipeDiscoverResponse;

  factory RecipeDiscoverResponse.fromJson(Map<String, dynamic> json) =>
      _$RecipeDiscoverResponseFromJson(json);
}
