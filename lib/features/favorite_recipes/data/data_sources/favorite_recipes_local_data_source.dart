import 'dart:async';
import 'package:drecipe/features/common/data/storage/hive_constants.dart';
import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class IFavoriteRecipesLocalDataSource {
  Future<void> addFavoriteRecipe({required Recipe recipe});
  Future<void> removeFavoriteRecipe({required int recipeId});
  Future<Recipe> getFavoriteRecipe({required int recipeId});
  Future<List<Recipe>> getFavoriteRecipes();
  Future<bool> checkIfFavorite({required int recipeId});
}

class FavoriteRecipesLocalDataSource
    implements IFavoriteRecipesLocalDataSource {
  @override
  Future<void> addFavoriteRecipe({required Recipe recipe}) async {
    var favoriteRecipesBox =
        await Hive.openBox<Recipe>(BoxNames.recipe.toString());
    await favoriteRecipesBox.put(recipe.id, recipe);
    await favoriteRecipesBox.close();
  }

  @override
  Future<void> removeFavoriteRecipe({required int recipeId}) async {
    var favoriteRecipesBox =
        await Hive.openBox<Recipe>(BoxNames.recipe.toString());
    await favoriteRecipesBox.delete(recipeId);
    await favoriteRecipesBox.close();
  }

  @override
  Future<bool> checkIfFavorite({required int recipeId}) async {
    var favoriteRecipesBox =
        await Hive.openBox<Recipe>(BoxNames.recipe.toString());

    if (favoriteRecipesBox.containsKey(recipeId)) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<Recipe> getFavoriteRecipe({required int recipeId}) async {
    var favoriteRecipesBox =
        await Hive.openBox<Recipe>(BoxNames.recipe.toString());
    final favoriteRecipe = favoriteRecipesBox.get(recipeId);
    return favoriteRecipe!;
  }

  @override
  Future<List<Recipe>> getFavoriteRecipes() async {
    var favoriteRecipesBox =
        await Hive.openBox<Recipe>(BoxNames.recipe.toString());
    final favoriteRecipes = favoriteRecipesBox.values.toList();
    return favoriteRecipes;
  }
}
