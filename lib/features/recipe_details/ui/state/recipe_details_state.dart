import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/recipe_details/domain/entities/recipe_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_details_state.freezed.dart';

@freezed
class RecipeDetailsState with _$RecipeDetailsState {
  const factory RecipeDetailsState.initial() = _Initial;
  const factory RecipeDetailsState.loading() = _Loading;
  const factory RecipeDetailsState.loaded({
    required RecipeDetails recipeDetails,
  }) = _Loaded;
  const factory RecipeDetailsState.error({
    required Failure failure,
  }) = _Error;
}
