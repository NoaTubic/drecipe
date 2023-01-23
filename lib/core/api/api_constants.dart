import 'package:drecipe/core/api/env.dart';

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




// 01088b458fcf49c18da608f3a524d41c
// f45087d34aad4ed28ed6b1170b88ddc9
