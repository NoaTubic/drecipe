import 'package:drecipe/features/common/data/api/env.dart';

abstract class ApiConstants {
  static String apiKey = Env.apiKey;
  static const String recipeImageUrl = 'https://spoonacular.com/recipeImages/';
  static const String ingredientImageUrl =
      'https://spoonacular.com/cdn/ingredients_100x100/';
  static const String equipmentImageUrl =
      'https://spoonacular.com/cdn/equipment_100x100/';

  static String rapidApiKey = Env.apiKey;
  static const String rapidApiHost =
      'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com';
  static const String rapidApiBaseUrl =
      'https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com';
}
