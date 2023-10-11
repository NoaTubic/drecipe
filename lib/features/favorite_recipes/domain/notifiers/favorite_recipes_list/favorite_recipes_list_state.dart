import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_recipes_list_state.freezed.dart';

@freezed
class FavoriteRecipesListState with _$FavoriteRecipesListState {
  const factory FavoriteRecipesListState.initial() = _Initial;
  const factory FavoriteRecipesListState.loading() = _Loading;
  const factory FavoriteRecipesListState.loaded({
    required List<Recipe> recipes,
  }) = _Loaded;
  const factory FavoriteRecipesListState.error({
    required String error,
  }) = _Error;
}
