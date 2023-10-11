import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_details_state.freezed.dart';

@freezed
class RecipeDetailsState with _$RecipeDetailsState {
  const factory RecipeDetailsState.initial() = _Initial;
  const factory RecipeDetailsState.loading() = _Loading;
  const factory RecipeDetailsState.loaded({required Recipe recipe}) = _Loaded;
  const factory RecipeDetailsState.error({
    required String failure,
  }) = _Error;
}
