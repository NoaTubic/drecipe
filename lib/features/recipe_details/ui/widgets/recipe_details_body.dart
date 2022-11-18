import 'package:drecipe/features/common/domain/entities/recipe.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_chip.dart';
import 'package:drecipe/features/recipe_details/ui/widgets/ingredient_list.dart';
import 'package:drecipe/features/recipe_details/ui/widgets/nutrition_card.dart';
import 'package:drecipe/features/recipe_details/ui/widgets/recipe_details_buttons.dart';
import 'package:drecipe/features/recipe_details/ui/widgets/recipe_details_image.dart';
import 'package:flutter/material.dart';

class RecipeDetailsBody extends StatelessWidget {
  const RecipeDetailsBody({
    Key? key,
    required this.recipe,
    required this.imageUrl,
  }) : super(key: key);

  final Recipe recipe;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RecipeDetailsImage(
          recipe: recipe,
          imageUrl: imageUrl,
        ),
        const SizedBox(
          height: Sizes.s16,
        ),
        Text(
          recipe.title,
          style: Theme.of(context).textTheme.headline3,
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: Sizes.s12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DrecipeChip(
                icon: Icons.timer,
                text: '${recipe.readyInMinutes} min',
              ),
              DrecipeChip(
                icon: Icons.person,
                text: '${recipe.servings} servings',
              ),
              DrecipeChip(
                icon: Icons.food_bank_rounded,
                text:
                    recipe.dishTypes!.isNotEmpty ? recipe.dishTypes![0] : null,
              ),
            ],
          ),
        ),
        NutritionCard(
          nutritionData: recipe.nutritionData!,
        ),
        const SizedBox(
          height: Sizes.s16,
        ),
        IngredientList(recipe: recipe),
        RecipeDetailsButtons(
          instructions: recipe.instructionsDetailed!,
        ),
        const SizedBox(
          height: Sizes.s4,
        ),
      ],
    );
  }
}
