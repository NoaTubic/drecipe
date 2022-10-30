import 'package:drecipe/features/common/domain/entities/recipe.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_recipe_state.freezed.dart';

@freezed
class FavoriteRecipeState with _$FavoriteRecipeState {
  const factory FavoriteRecipeState.initial() = _Initial;
  const factory FavoriteRecipeState.loading() = _Loading;
  const factory FavoriteRecipeState.loaded({
    required bool isFavorite,
    required Recipe recipe,
  }) = _Loaded;
  const factory FavoriteRecipeState.error({
    required Failure error,
  }) = _Error;
}
