import 'package:drecipe/features/discover_recipes/domain/entities/recipe_recommended.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommended_recipes_state.freezed.dart';

@freezed
class RecommendedRecipesState with _$RecommendedRecipesState {
  const factory RecommendedRecipesState.initial() = _Initial;
  const factory RecommendedRecipesState.loading() = _Loading;
  const factory RecommendedRecipesState.loaded({
    required List<RecipeRecommended> recipes,
  }) = _Loaded;
  const factory RecommendedRecipesState.error({
    required String failure,
  }) = _Error;
  const factory RecommendedRecipesState.offline() = _Offline;
}
