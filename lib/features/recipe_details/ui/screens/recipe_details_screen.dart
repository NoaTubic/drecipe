import 'package:drecipe/features/common/domain/entities/instructions.dart';
import 'package:drecipe/features/common/domain/entities/recipe.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_app_bar.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_chip.dart';
import 'package:drecipe/features/recipe_details/ui/widgets/ingredient_list.dart';
import 'package:drecipe/features/recipe_details/ui/widgets/nutrition_card.dart';
import 'package:drecipe/features/recipe_details/ui/widgets/recipe_details_buttons.dart';
import 'package:drecipe/features/recipe_details/ui/widgets/recipe_details_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_scaffold.dart';
import 'package:drecipe/features/recipe_details/di/providers.dart';

class RecipeDetailsScreen extends ConsumerWidget {
  const RecipeDetailsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Instructions> instructions = [];
    return DrecipeScaffold(
      appBar: const DrecipeAppBar(
        elevated: false,
      ),
      body: ref.watch(recipeDetailsNotifierProvider).when(
            initial: () => Container(),
            loading: () => Container(),
            loaded: (recipe) {
              return RecipeDetailsBody(
                recipe: recipe,
              );
            },
            error: (failure) => Container(),
          ),

      //     Column(
      //       children: [

      //         ref.watch(recipeDetailsNotifierProvider).when(
      //               initial: () => Container(),
      //               loading: () => Container(),
      //               loaded: (recipe) {
      //                 instructions = recipe.instructionsDetailed!;
      //                 // recipe.copyWith(
      //                 //     instructionsDetailed: recipeDetails.instructions);
      //                 return NutritionCard(
      //                   nutritionData: recipe.nutritionData!,
      //                 );
      //               },
      //               error: (failure) => Container(),
      //             ),

      //       ],
      //     ),
    );
  }
}

class RecipeDetailsBody extends StatelessWidget {
  const RecipeDetailsBody({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RecipeDetailsImage(
          recipe: recipe,
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
                text: recipe.dishTypes![0],
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
