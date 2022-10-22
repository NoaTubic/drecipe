import 'package:drecipe/core/database/database_constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'ingredient.freezed.dart';
part 'ingredient.g.dart';

@freezed
@HiveType(
    typeId: DatabaseConstants.ingredient, adapterName: 'IngredientAdapter')
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
