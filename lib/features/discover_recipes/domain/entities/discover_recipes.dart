import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_recommended.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discover_recipes.freezed.dart';

@freezed
class DiscoverRecipes with _$DiscoverRecipes {
  const factory DiscoverRecipes({
    required List<RecipeDiscover> randomRecipes,
    required List<RecipeDiscover> popularRecipes,
    required List<RecipeDiscover> healthyRecipes,
    required List<RecipeRecommended> recommendedRecipes,
  }) = _DiscoverRecipes;
}
