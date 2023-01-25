import 'package:drecipe/core/api/api_constants.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_recommended.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_recommended_response.freezed.dart';
part 'recipe_recommended_response.g.dart';

@freezed
class RecipeRecommendedResponse with _$RecipeRecommendedResponse {
  const factory RecipeRecommendedResponse({
    required int id,
    required String imageType,
    required String title,
    required int readyInMinutes,
    required int servings,
  }) = _RecipeRecommendedResponse;

  factory RecipeRecommendedResponse.fromJson(Map<String, dynamic> json) =>
      _$RecipeRecommendedResponseFromJson(json);
}

List<RecipeRecommended> convertRecommendedRecipes(
    {required List<RecipeRecommendedResponse> results}) {
  List<RecipeRecommended> recipesList = [];
  for (var recipe in results) {
    recipesList.add(
      RecipeRecommended(
        id: recipe.id,
        title: recipe.title,
        servings: recipe.servings,
        readyInMinutes: recipe.readyInMinutes,
        image:
            '${ApiConstants.recipeImageUrl}${recipe.id}-240x150.${recipe.imageType}',
      ),
    );
  }
  return recipesList;
}
