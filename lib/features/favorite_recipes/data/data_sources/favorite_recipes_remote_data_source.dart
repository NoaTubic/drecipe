import 'package:dartz/dartz.dart';
import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';

abstract class IFavoriteRecipesRemoteDataSource {
  Future<Unit> addFavoriteRecipe({required Recipe recipe});
  Future<Unit> removeFavoriteRecipe({required Recipe recipe});
  Stream<List<Recipe>> getFavoriteRecipes();
}

class FavoriteRecipesRemoteDataSource
    implements IFavoriteRecipesRemoteDataSource {
  // final FirebaseAuth _firebaseAuth;
  // final FirebaseFirestore _firestore;

  FavoriteRecipesRemoteDataSource();

  @override
  Future<Unit> addFavoriteRecipe({required Recipe recipe}) async {
    throw UnimplementedError();
  }

  @override
  Future<Unit> removeFavoriteRecipe({required Recipe recipe}) async {
    throw UnimplementedError();
  }

  @override
  Stream<List<Recipe>> getFavoriteRecipes() {
    throw UnimplementedError();
  }
}
