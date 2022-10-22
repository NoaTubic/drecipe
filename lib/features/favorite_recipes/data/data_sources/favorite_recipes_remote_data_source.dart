import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:drecipe/features/common/domain/entities/recipe.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IFavoriteRecipesRemoteDataSource {
  Future<Unit> addFavoriteRecipe({required Recipe recipe});
  Future<Unit> removeFavoriteRecipe({required Recipe recipe});
  Stream<List<Recipe>> getFavoriteRecipes();
}

class FavoriteRecipesRemoteDataSource
    implements IFavoriteRecipesRemoteDataSource {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  FavoriteRecipesRemoteDataSource(this._firebaseAuth, this._firestore);

  @override
  Future<Unit> addFavoriteRecipe({required Recipe recipe}) async {
    // TODO: implement addFavoriteRecipe
    throw UnimplementedError();
  }

  @override
  Future<Unit> removeFavoriteRecipe({required Recipe recipe}) async {
    // TODO: implement removeFavoriteRecipe
    throw UnimplementedError();
  }

  @override
  Stream<List<Recipe>> getFavoriteRecipes() {
    // TODO: implement getFavoriteRecipes
    throw UnimplementedError();
  }
}
