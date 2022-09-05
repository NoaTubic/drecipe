import 'package:drecipe/features/common/domain/entities/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discover_recipes.freezed.dart';

@freezed
class DiscoverRecipes with _$DiscoverRecipes {
  const factory DiscoverRecipes({
    required List<Recipe> randomRecipes,
    required List<Recipe> popularRecipes,
    required List<Recipe> healthyRecipe,
  }) = _DiscoverRecipes;
}
