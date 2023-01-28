import 'dart:developer' as dev;
import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:drecipe/core/api/api_client.dart';
import 'package:drecipe/core/api/api_helpers.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/discover_recipes/data/models/recipe_discover_response.dart';
import 'package:drecipe/features/discover_recipes/data/models/recipe_recommended_response.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/discover_recipes.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_recommended.dart';
import 'package:drecipe/features/favorite_recipes/data/favorite_recipes_repository.dart';

abstract class IDiscoverRecipesRepository {
  Future<Either<Failure, DiscoverRecipes>> getRecipes();
  Future<Either<Failure, List<RecipeDiscover>>> getMealTimeRecipes({
    required String mealType,
  });
}

class DiscoverRecipesRepository implements IDiscoverRecipesRepository {
  final ApiClient _apiClient;
  final IFavoriteRecipesRepository _favoriteRecipesRepository;

  DiscoverRecipesRepository(this._apiClient, this._favoriteRecipesRepository);

  @override
  Future<Either<Failure, DiscoverRecipes>> getRecipes() async {
    try {
      List<RecipeDiscover> randomRecipes = [];
      List<RecipeDiscover> popularRecipes = [];
      List<RecipeDiscover> healthyRecipes = [];
      List<RecipeRecommended> recommendedRecipes = [];

      final randomRecipesResponse =
          await _apiClient.getRandomRecipes(sort: Constants.randomRecipes);

      randomRecipes = randomRecipesResponse.convertRecipesDiscover();

      final popularRecipesResponse = await _apiClient.getRandomRecipes(
          sort: Constants.popularRecipes, offset: Random().nextInt(900));

      popularRecipes = popularRecipesResponse.convertRecipesDiscover();

      final healthyRecipesResponse = await _apiClient.getRandomRecipes(
          sort: Constants.healthyRecipes, offset: Random().nextInt(900));

      healthyRecipes = healthyRecipesResponse.convertRecipesDiscover();

      final recommendedRecipeID = await getRecommendedId();

      if (recommendedRecipeID != null) {
        final recommendedRecipesResponse =
            await _apiClient.getRecommendedRecipes(id: recommendedRecipeID);
        recommendedRecipes =
            convertRecommendedRecipes(results: recommendedRecipesResponse);
      }

      final recipes = DiscoverRecipes(
        randomRecipes: randomRecipes,
        popularRecipes: popularRecipes,
        healthyRecipes: healthyRecipes,
        recommendedRecipes: recommendedRecipes,
      );

      return right(recipes);
    } on DioError catch (exception, st) {
      dev.log(exception.message);
      dev.log(st.toString());
      return left(exception.handleFailure());
    }
  }

  Future<int?> getRecommendedId() async {
    int? recommendedId;

    final favoriteRecipes =
        await _favoriteRecipesRepository.getFavoriteRecipesLocal();

    favoriteRecipes.fold(
      (failure) => recommendedId,
      (favoriteRecipes) {
        recommendedId = favoriteRecipes.isEmpty
            ? null
            : favoriteRecipes[Random().nextInt(favoriteRecipes.length)].id;
      },
    );
    return recommendedId;
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
