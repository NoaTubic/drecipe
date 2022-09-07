import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:drecipe/core/api/api_client.dart';
import 'package:drecipe/core/api/api_helpers.dart';
import 'package:drecipe/features/common/data/models/responses/instructions_response.dart';
import 'package:drecipe/features/common/data/models/responses/nutrition_response.dart';
import 'package:drecipe/features/common/domain/entities/instructions.dart';
import 'package:drecipe/features/common/domain/entities/nutrition_data.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/recipe_details/data/models/recipe_details_response.dart';
import 'package:drecipe/features/recipe_details/domain/entities/recipe_details.dart';

abstract class IRecipeDetailsRepository {
  Future<Either<Failure, RecipeDetails>> getRecipeDetails({required int id});
}

class RecipeDetailsRepository implements IRecipeDetailsRepository {
  final ApiClient _apiClient;

  RecipeDetailsRepository(this._apiClient);

  @override
  Future<Either<Failure, RecipeDetails>> getRecipeDetails(
      {required int id}) async {
    try {
      final recipeDetailsResponse = await _apiClient.getRecipeDetails(id: id);
      final recipeDetails = RecipeDetails(
          nutritionData: recipeDetailsResponse.convertNutritionData(),
          instructions: recipeDetailsResponse.convertInstructions());

      return right(recipeDetails);
    } on DioError catch (exception) {
      return left(
        exception.handleFailure(),
      );
    }
  }
}

extension NutritionDataExtension on RecipeDetailsResponse {
  NutritionData convertNutritionData() {
    final nutritionData = NutritionData(
      nutrients: nutrition.convertNutrients(),
      percentProtein: nutrition.caloricBreakdown.percentProtein,
      percentFat: nutrition.caloricBreakdown.percentFat,
      percentCarbs: nutrition.caloricBreakdown.percentCarbs,
      weightPerServing:
          '${nutrition.weightPerServingResponse?.amount} + ${nutrition.weightPerServingResponse?.unit}',
    );
    return nutritionData;
  }
}

extension NutrientsExtension on NutritionResponse {
  List<Nutrient> convertNutrients() {
    List<Nutrient> nutrientsList = [];
    for (var nutrient in nutrients) {
      nutrientsList.add(Nutrient(
          name: nutrient.name,
          amount: '${nutrient.amount.round()} ${nutrient.unit}'));
    }
    return nutrientsList;
  }
}

extension InstructionsExtension on RecipeDetailsResponse {
  List<Instructions> convertInstructions() {
    List<Instructions> instructionsList = [];
    for (var instruction in analyzedInstructions) {
      instructionsList.add(
        Instructions(
          name: instruction.name,
          steps: instruction.convertSteps(),
        ),
      );
    }
    return instructionsList;
  }
}

extension StepExtension on InstructionsResponse {
  List<InstructionStep> convertSteps() {
    List<InstructionStep> stepsList = [];
    for (var step in steps) {
      stepsList.add(InstructionStep(
        number: step.number.toString(),
        instruction: step.step,
        ingredients: step.convertIngredients(),
        equipment: step.convertEquipment(),
        stepDuration: '${step.length?.number.toString()} ${step.length?.unit}',
      ));
    }
    return stepsList;
  }
}

extension EquipmentAndIngredientsExtension on StepResponse {
  List<EquipmentAndIngredients> convertIngredients() {
    List<EquipmentAndIngredients> list = [];
    for (var element in ingredients!) {
      list.add(
          EquipmentAndIngredients(name: element.name, image: element.image));
    }
    return list;
  }

  List<EquipmentAndIngredients> convertEquipment() {
    List<EquipmentAndIngredients> list = [];
    for (var element in equipment!) {
      list.add(
          EquipmentAndIngredients(name: element.name, image: element.image));
    }
    return list;
  }
}
