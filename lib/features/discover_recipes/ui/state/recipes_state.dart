import 'package:drecipe/features/common/domain/entities/recipe.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipes_state.freezed.dart';

@freezed
class RecipesState with _$RecipesState {
  const factory RecipesState.initial() = _Initial;
  const factory RecipesState.loading() = _Loading;
  const factory RecipesState.loaded({
    required List<Recipe> recipe,
  }) = _Loaded;
  const factory RecipesState.error({
    required Failure failure,
  }) = _Error;
}
