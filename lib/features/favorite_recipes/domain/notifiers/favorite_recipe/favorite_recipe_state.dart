import 'package:dartz/dartz.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_recipe_state.freezed.dart';

// @freezed
// class FavoriteRecipeState with _$FavoriteRecipeState {
//   const factory FavoriteRecipeState.initial() = _Initial;
//   const factory FavoriteRecipeState.loading() = _Loading;
//   const factory FavoriteRecipeState.loaded({
//     bool? isFavorite,
//   }) = _Loaded;
//   const factory FavoriteRecipeState.error({
//     required Failure error,
//   }) = _Error;
// }

@freezed
class FavoriteRecipeState with _$FavoriteRecipeState {
  const factory FavoriteRecipeState({
    required bool isLoading,
    required bool isHeartAnimating,
    required bool isFavorite,
    required bool showErrorMessages,
    required Option<Either<Failure, Recipe>> favoritesResult,
  }) = _FavoriteRecipeState;

  factory FavoriteRecipeState.initial() => FavoriteRecipeState(
      isLoading: false,
      isHeartAnimating: false,
      isFavorite: false,
      showErrorMessages: false,
      favoritesResult: none());
}
