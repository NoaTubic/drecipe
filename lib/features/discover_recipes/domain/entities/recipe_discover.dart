import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_discover.freezed.dart';

@freezed
class RecipeDiscover with _$RecipeDiscover {
  const factory RecipeDiscover({
    required int id,
    required String title,
    required int servings,
    String? image,
    required int readyInMinutes,
    required bool vegetarian,
    required bool vegan,
    required bool glutenFree,
    required bool veryPopular,
    required bool veryHealthy,
  }) = _RecipeDiscover;
}
