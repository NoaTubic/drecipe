import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipes.freezed.dart';

@freezed
class Recipes with _$Recipes {
  const factory Recipes({
    required List<Recipe> recipes,
  }) = _Recipes;
}
