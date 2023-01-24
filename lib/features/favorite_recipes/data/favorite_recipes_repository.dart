import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:drecipe/core/api/api_helpers.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/favorite_recipes/data/data_sources/favorite_recipes_local_data_source.dart';
import 'package:drecipe/features/favorite_recipes/data/data_sources/favorite_recipes_remote_data_source.dart';
import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';

abstract class IFavoriteRecipesRepository {
  Future<Either<Failure, Unit>> addFavoriteRecipe({required Recipe recipe});
  Future<Either<Failure, Unit>> removeFavoriteRecipe({required int recipeId});
  Future<Either<Failure, Recipe>> getFavoriteRecipe({required int recipeId});
  Future<Either<Failure, List<Recipe>>> getFavoriteRecipes();
  Future<Either<Failure, bool>> checkIfFavoriteRecipe({required int recipeId});
}

class FavoriteRecipesRepository implements IFavoriteRecipesRepository {
  final IFavoriteRecipesRemoteDataSource _remoteDataSource;
  final IFavoriteRecipesLocalDataSource _localDataSource;

  FavoriteRecipesRepository(this._remoteDataSource, this._localDataSource);

  @override
  Future<Either<Failure, Unit>> addFavoriteRecipe(
      {required Recipe recipe}) async {
    try {
      await _localDataSource.addFavoriteRecipe(recipe: recipe);
      return right(unit);
    } on DioError catch (exception) {
      return left(exception.handleFailure());
    } catch (exception) {
      return left(const Failure.unexpectedError());
    }
  }

  @override
  Future<Either<Failure, Unit>> removeFavoriteRecipe(
      {required int recipeId}) async {
    try {
      await _localDataSource.removeFavoriteRecipe(recipeId: recipeId);
      return right(unit);
    } on DioError catch (exception) {
      return left(exception.handleFailure());
    } catch (exception) {
      return left(const Failure.unexpectedError());
    }
  }

  @override
  Future<Either<Failure, Recipe>> getFavoriteRecipe(
      {required int recipeId}) async {
    try {
      final favoriteRecipe =
          await _localDataSource.getFavoriteRecipe(recipeId: recipeId);
      return right(favoriteRecipe);
    } on DioError catch (exception) {
      return left(exception.handleFailure());
    } catch (exception) {
      return left(const Failure.unexpectedError());
    }
  }

  @override
  Future<Either<Failure, List<Recipe>>> getFavoriteRecipes() async {
    try {
      final favoriteRecipes = await _localDataSource.getFavoriteRecipes();
      log(favoriteRecipes.length.toString());
      return right(favoriteRecipes);
    } on DioError catch (exception) {
      return left(exception.handleFailure());
    } catch (exception) {
      return left(const Failure.unexpectedError());
    }
  }

  @override
  Future<Either<Failure, bool>> checkIfFavoriteRecipe(
      {required int recipeId}) async {
    try {
      final isFavorite =
          await _localDataSource.checkIfFavorite(recipeId: recipeId);
      if (isFavorite) {
        return right(true);
      } else {
        return right(false);
      }
    } on DioError catch (exception) {
      return left(exception.handleFailure());
    } catch (exception) {
      return left(const Failure.unexpectedError());
    }
  }
}
