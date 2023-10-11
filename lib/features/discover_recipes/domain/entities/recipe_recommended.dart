import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_recommended.freezed.dart';

@freezed
class RecipeRecommended with _$RecipeRecommended {
  const factory RecipeRecommended({
    required int id,
    required String title,
    required int servings,
    String? image,
    required int readyInMinutes,
  }) = _RecipeRecommended;
}
