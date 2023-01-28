import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drecipe/core/firebase/firebase_constants.dart';
import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IFavoriteRecipesRemoteDataSource {
  Future<void> addFavoriteRecipe({required Recipe recipe});
  Future<void> removeFavoriteRecipe({required int recipeId});
  Future<Recipe> getFavoriteRecipe({required int recipeId});
  Stream<List<Recipe>> getFavoriteRecipes();
  Future<bool> checkIfFavorite({required int recipeId});
}

class FavoriteRecipesRemoteDataSource
    implements IFavoriteRecipesRemoteDataSource {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  FavoriteRecipesRemoteDataSource(this._firebaseAuth, this._firebaseFirestore);

  @override
  Future<void> addFavoriteRecipe({required Recipe recipe}) async {
    final user = _firebaseAuth.currentUser;
    await _firebaseFirestore
        .collection(Collections.users)
        .doc(user!.uid)
        .collection(Collections.favoriteRecipes)
        .add(recipe.toJson());
  }

  @override
  Future<void> removeFavoriteRecipe({required int recipeId}) async {
    final user = _firebaseAuth.currentUser;
    final recipe = await _firebaseFirestore
        .collection(Collections.users)
        .doc(user!.uid)
        .collection(Collections.favoriteRecipes)
        .where('id', isEqualTo: recipeId)
        .get();

    recipe.docs.first.reference.delete();
  }

  @override
  Future<Recipe> getFavoriteRecipe({
    required int recipeId,
  }) async {
    final user = _firebaseAuth.currentUser;
    final recipeRef = await _firebaseFirestore
        .collection(Collections.users)
        .doc(user!.uid)
        .collection(Collections.favoriteRecipes)
        .where('id', isEqualTo: recipeId)
        .get();

    final recipe = Recipe.fromJson(recipeRef.docs.first.data());

    return recipe;
  }

  @override
  Stream<List<Recipe>> getFavoriteRecipes() async* {
    final user = _firebaseAuth.currentUser;
    yield* _firebaseFirestore
        .collection(Collections.users)
        .doc(user!.uid)
        .collection(Collections.favoriteRecipes)
        .snapshots()
        .transform(StreamTransformer.fromHandlers(
          handleData: (json, sink) => sink.add(
            json.docs.map((e) => Recipe.fromJson(e.data())).toList(),
          ),
        ));
  }

  @override
  Future<bool> checkIfFavorite({required int recipeId}) async {
    final user = _firebaseAuth.currentUser;
    bool isFavorite = false;
    final recipe = await _firebaseFirestore
        .collection(Collections.users)
        .doc(user!.uid)
        .collection(Collections.favoriteRecipes)
        .where('id', isEqualTo: recipeId)
        .get();
    if (recipe.docs.isNotEmpty) {
      isFavorite = true;
    }
    return isFavorite;
  }
}
