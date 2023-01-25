import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:drecipe/core/api/api_client.dart';
import 'package:drecipe/core/api/api_helpers.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/discover_recipes/data/models/recipe_discover_response.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/discover_recipes.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';

abstract class IDiscoverRecipesRepository {
  Future<Either<Failure, DiscoverRecipes>> getRecipes();
  Future<Either<Failure, List<RecipeDiscover>>> getMealTimeRecipes({
    required String mealType,
  });
}

class DiscoverRecipesRepository implements IDiscoverRecipesRepository {
  final ApiClient _apiClient;

  DiscoverRecipesRepository(this._apiClient);

  @override
  Future<Either<Failure, DiscoverRecipes>> getRecipes() async {
    try {
      List<RecipeDiscover> randomRecipes = [];
      List<RecipeDiscover> popularRecipes = [];
      List<RecipeDiscover> healthyRecipes = [];
      // List<Recipe> recommendedRecipes = [];

      final randomRecipesResponse =
          await _apiClient.getRandomRecipes(sort: Constants.randomRecipes);

      randomRecipes = randomRecipesResponse.convertRecipesDiscover();

      final popularRecipesResponse = await _apiClient.getRandomRecipes(
          sort: Constants.popularRecipes, offset: Random().nextInt(900));

      popularRecipes = popularRecipesResponse.convertRecipesDiscover();

      final healthyRecipesResponse = await _apiClient.getRandomRecipes(
          sort: Constants.healthyRecipes, offset: Random().nextInt(900));

      healthyRecipes = healthyRecipesResponse.convertRecipesDiscover();

      final recipes = DiscoverRecipes(
        randomRecipes: randomRecipes,
        popularRecipes: popularRecipes,
        healthyRecipe: healthyRecipes,
      );

      return right(recipes);
    } on DioError catch (exception) {
      return left(exception.handleFailure());
    }
  }

  @override
  Future<Either<Failure, List<RecipeDiscover>>> getMealTimeRecipes(
      {required String mealType}) async {
    try {
      List<RecipeDiscover> mealTimeRecipes = [];

      final mealTimeRecipesResponse = await _apiClient.getRandomRecipes(
        sort: Constants.randomRecipes,
        offset: Random().nextInt(900),
        type: mealType,
      );

      mealTimeRecipes = mealTimeRecipesResponse.convertRecipesDiscover();

      return right(mealTimeRecipes);
    } on DioError catch (exception) {
      return left(exception.handleFailure());
    }
  }
}
