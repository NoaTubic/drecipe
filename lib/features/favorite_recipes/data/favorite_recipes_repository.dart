import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:drecipe/features/common/data/api/api_helpers.dart';
import 'package:drecipe/features/common/domain/entities/failure.dart';
import 'package:drecipe/features/common/domain/utils/either_failure_or.dart';
import 'package:drecipe/features/favorite_recipes/data/data_sources/favorite_recipes_local_data_source.dart';
import 'package:drecipe/features/favorite_recipes/data/data_sources/favorite_recipes_remote_data_source.dart';
import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favoriteRecipesRepositoryProvider = Provider<FavoriteRecipesRepository>(
  (ref) => FavoriteRecipesRepositoryImpl(
    ref.read(favoriteRecipesRemoteDataSourceProvider),
    ref.read(favoriteRecipesLocalDataSourceProvider),
  ),
);

abstract class FavoriteRecipesRepository {
  EitherFailureOr<Unit> addFavoriteRecipe({required Recipe recipe});
  EitherFailureOr<Unit> removeFavoriteRecipe({required int recipeId});
  EitherFailureOr<Recipe> getFavoriteRecipe({required int recipeId});
  EitherFailureOr<List<Recipe>> getFavoriteRecipesLocal();
  StreamFailureOr<List<Recipe>> getFavoriteRecipesRemote();
  EitherFailureOr<bool> checkIfFavoriteRecipe({required int recipeId});
}

class FavoriteRecipesRepositoryImpl implements FavoriteRecipesRepository {
  final FavoriteRecipesRemoteDataSource _remoteDataSource;
  final FavoriteRecipesLocalDataSource _localDataSource;

  FavoriteRecipesRepositoryImpl(
    this._remoteDataSource,
    this._localDataSource,
  );

  @override
  EitherFailureOr<Unit> addFavoriteRecipe({
    required Recipe recipe,
  }) async {
    try {
      await _remoteDataSource.addFavoriteRecipe(recipe: recipe);
      await _localDataSource.addFavoriteRecipe(recipe: recipe);

      return right(unit);
    } on DioError catch (exception) {
      return left(exception.handleFailure());
    } catch (exception) {
      return left(Failure.generic());
    }
  }

  @override
  EitherFailureOr<Unit> removeFavoriteRecipe({
    required int recipeId,
  }) async {
    try {
      await _remoteDataSource.removeFavoriteRecipe(recipeId: recipeId);

      await _localDataSource.removeFavoriteRecipe(recipeId: recipeId);

      return right(unit);
    } on DioError catch (exception) {
      return left(exception.handleFailure());
    } catch (exception) {
      return left(Failure.generic());
    }
  }

  @override
  EitherFailureOr<Recipe> getFavoriteRecipe({required int recipeId}) async {
    try {
      final favoriteRecipe =
          await _localDataSource.getFavoriteRecipe(recipeId: recipeId);
      await _remoteDataSource.getFavoriteRecipe(recipeId: recipeId);
      return right(favoriteRecipe);
    } on DioError catch (exception) {
      return left(exception.handleFailure());
    } catch (exception) {
      return left(Failure.generic());
    }
  }

  @override
  EitherFailureOr<List<Recipe>> getFavoriteRecipesLocal() async {
    try {
      final favoriteRecipes = await _localDataSource.getFavoriteRecipes();
      log(favoriteRecipes.length.toString());
      return right(favoriteRecipes);
    } on DioError catch (exception) {
      return left(exception.handleFailure());
    } catch (exception) {
      return left(Failure.generic());
    }
  }

  @override
  StreamFailureOr<List<Recipe>> getFavoriteRecipesRemote() async* {
    try {
      await for (final event in _remoteDataSource.getFavoriteRecipes()) {
        yield right(event);
      }
    } on DioError catch (exception) {
      yield left(exception.handleFailure());
    } catch (exception) {
      yield left(Failure.generic());
    }
  }

  @override
  EitherFailureOr<bool> checkIfFavoriteRecipe({required int recipeId}) async {
    try {
      final isFavorite =
          await _localDataSource.checkIfFavorite(recipeId: recipeId);
      // ||
      //     await _remoteDataSource.checkIfFavorite(recipeId: recipeId);
      log(isFavorite.toString());
      if (isFavorite) {
        return right(true);
      } else {
        return right(false);
      }
    } on DioError catch (exception) {
      return left(exception.handleFailure());
    } catch (exception) {
      return left(Failure.generic());
    }
  }
}
