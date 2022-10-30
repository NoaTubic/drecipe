import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:drecipe/core/api/api_helpers.dart';
import 'package:drecipe/features/common/domain/entities/recipe.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/favorite_recipes/data/data_sources/favorite_recipes_local_data_source.dart';
import 'package:drecipe/features/favorite_recipes/data/data_sources/favorite_recipes_remote_data_source.dart';

abstract class IFavoriteRecipesRepository {
  Future<Either<Failure, Recipe>> addFavoriteRecipe({required Recipe recipe});
  Future<Either<Failure, Recipe>> removeFavoriteRecipe(
      {required Recipe recipe});
  Future<Either<Failure, Recipe>> getFavoriteRecipes({required Recipe recipe});
}

class FavoriteRecipesRepository implements IFavoriteRecipesRepository {
  final IFavoriteRecipesRemoteDataSource _remoteDataSource;
  final IFavoriteRecipesLocalDataSource _localDataSource;

  FavoriteRecipesRepository(this._remoteDataSource, this._localDataSource);

  @override
  Future<Either<Failure, Recipe>> addFavoriteRecipe(
      {required Recipe recipe}) async {
    try {
      final hiveResult =
          await _localDataSource.addFavoriteRecipe(recipe: recipe);
      return right(recipe);
    } on DioError catch (exception) {
      return left(exception.handleFailure());
    }
  }

  @override
  Future<Either<Failure, Recipe>> removeFavoriteRecipe(
      {required Recipe recipe}) async {
    try {
      await _localDataSource.removeFavoriteRecipe(recipe: recipe);
      return right(recipe);
    } on DioError catch (exception) {
      return left(exception.handleFailure());
    }
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Recipe>> getFavoriteRecipes(
      {required Recipe recipe}) async {
    try {} on DioError catch (exception) {
      return left(exception.handleFailure());
    }
    throw UnimplementedError();
  }
}
