import 'package:drecipe/features/common/domain/entities/ingredient.dart';
import 'package:drecipe/features/common/domain/entities/instructions.dart';
import 'package:drecipe/features/common/domain/entities/nutrition_data.dart';
import 'package:drecipe/features/common/domain/entities/recipe.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> configureDatabase({String path = ''}) async {
  if (path.isEmpty) {
    await Hive.initFlutter();
  } else {
    Hive.init(path);
  }
  Hive.registerAdapter(RecipeAdapter());
  Hive.registerAdapter(IngredientAdapter());
  Hive.registerAdapter(NutritionDataAdapter());
  Hive.registerAdapter(NutrientAdapter());
  Hive.registerAdapter(InstructionsAdapter());
  Hive.registerAdapter(InstructionStepAdapter());
  Hive.registerAdapter(EquipmentAndIngredientsAdapter());
}
