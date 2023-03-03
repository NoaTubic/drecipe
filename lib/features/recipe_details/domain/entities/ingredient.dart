import 'package:drecipe/features/common/data/storage/hive_constants.dart';
import 'package:drecipe/features/recipe_details/data/models/responses/recipe_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'ingredient.freezed.dart';
part 'ingredient.g.dart';

@freezed
@HiveType(
  typeId: HiveConstants.ingredientId,
  adapterName: HiveConstants.ingredientAdapter,
)
class Ingredient with _$Ingredient {
  @JsonSerializable(explicitToJson: true)
  const factory Ingredient({
    @HiveField(0) required int id,
    @HiveField(1) String? image,
    @HiveField(2) required String original,
  }) = _Ingredient;

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
}

extension IngredientsExtension on RecipeResponse {
  List<Ingredient> convertIngredients() {
    List<Ingredient> ingredientsList = [];
    for (var ingredient in extendedIngredients) {
      ingredientsList.add(
        Ingredient(
          id: ingredient.id,
          image: ingredient.image,
          original: ingredient.original,
        ),
      );
    }
    return ingredientsList;
  }
}
