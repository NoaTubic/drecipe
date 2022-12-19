import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'recipe_discover_response.freezed.dart';
part 'recipe_discover_response.g.dart';

@freezed
class RecipesDiscoverResponse with _$RecipesDiscoverResponse {
  const factory RecipesDiscoverResponse({
    required List<RecipeDiscoverResponse> results,
  }) = _RecipesDiscoverResponse;

  factory RecipesDiscoverResponse.fromJson(Map<String, dynamic> json) =>
      _$RecipesDiscoverResponseFromJson(json);
}

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

extension RecipesExtension on RecipesDiscoverResponse {
  List<RecipeDiscover> convertRecipesDiscover() {
    List<RecipeDiscover> recipesList = [];
    for (var recipe in results) {
      recipesList.add(
        RecipeDiscover(
            id: recipe.id,
            title: recipe.title,
            servings: recipe.servings,
            image: recipe.image,
            readyInMinutes: recipe.readyInMinutes,
            vegetarian: recipe.vegetarian,
            vegan: recipe.vegan,
            glutenFree: recipe.glutenFree,
            veryPopular: recipe.veryPopular,
            veryHealthy: recipe.veryHealthy),
      );
    }
    return recipesList;
  }
}
