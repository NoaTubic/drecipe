enum BoxNames {
  recipe,
  ingredient,
  nutritionData,
  nutrient,
  instructions,
  instructionStep,
  equipmentAndIngredients
}

abstract class HiveConstants {
  static const int recipeId = 1;
  static const int ingredientId = 2;
  static const int nutritionDataId = 3;
  static const int nutrientId = 4;
  static const int instructionsId = 5;
  static const int instructionStepId = 6;
  static const int equipmentAndIngredientsId = 7;
  static const String recipeAdapter = 'RecipeAdapter';
  static const String ingredientAdapter = 'IngredientAdapter';
  static const String nutritionDataAdapter = 'NutritionDataAdapter';
  static const String nutrientAdapter = 'NutrientAdapter';
  static const String instructionsAdapter = 'InstructionsAdapter';
  static const String instructionsStepAdapter = 'InstructionStepAdapter';
  static const String equipmentAndIngredientsAdapter =
      'EquipmentAndIngredientsAdapter';
}
