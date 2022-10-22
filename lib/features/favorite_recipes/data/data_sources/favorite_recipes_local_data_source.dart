import 'package:drecipe/core/database/database_constants.dart';
import 'package:drecipe/features/common/domain/entities/recipe.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class IFavoriteRecipesLocalDataSource {
  Future<void> addFavoriteRecipe({required Recipe recipe});
  Future<void> removeFavoriteRecipe({required Recipe recipe});
  Future<List<Recipe>> getFavoriteRecipes();
}

class FavoriteRecipesLocalDataSource
    implements IFavoriteRecipesLocalDataSource {
  @override
  Future<void> addFavoriteRecipe({required Recipe recipe}) async {
    var favoriteRecipesBox = await Hive.openBox(BoxNames.recipe.toString());
    await favoriteRecipesBox.add(recipe);
    await favoriteRecipesBox.close();
  }

  @override
  Future<void> removeFavoriteRecipe({required Recipe recipe}) async {
    var favoriteRecipesBox = await Hive.openBox(BoxNames.recipe.toString());
    await favoriteRecipesBox.delete(recipe);
    await favoriteRecipesBox.close();
  }

  @override
  Future<List<Recipe>> getFavoriteRecipes() async {
    var favoriteRecipesBox =
        await Hive.openBox<Recipe>(BoxNames.recipe.toString());
    final favoriteRecipes = favoriteRecipesBox.values.toList();
    return favoriteRecipes;
  }
}
