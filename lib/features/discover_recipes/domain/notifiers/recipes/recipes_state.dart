import 'package:drecipe/features/discover_recipes/domain/entities/discover_recipes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipes_state.freezed.dart';

@freezed
class RecipesState with _$RecipesState {
  const factory RecipesState.initial() = _Initial;
  const factory RecipesState.loading() = _Loading;
  const factory RecipesState.loaded({
    required DiscoverRecipes recipes,
  }) = _Loaded;
  const factory RecipesState.error({
    required String failure,
  }) = _Error;
  const factory RecipesState.offline() = _Offline;
}
