import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_chip.dart';
import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';
import 'package:drecipe/features/recipe_details/presentation/widgets/ingredient_list.dart';
import 'package:drecipe/features/recipe_details/presentation/widgets/nutrition_card.dart';
import 'package:drecipe/features/recipe_details/presentation/widgets/recipe_details_buttons.dart';
import 'package:drecipe/features/recipe_details/presentation/widgets/recipe_details_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecipeDetailsBody extends ConsumerWidget {
  const RecipeDetailsBody({
    Key? key,
    required this.recipe,
    required this.imageUrl,
  }) : super(key: key);

  final Recipe recipe;
  final String imageUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        RecipeDetailsImage(
          recipe: recipe,
          imageUrl: imageUrl,
        ),
        SizedBox(
          height: Sizes.s16.h,
        ),
        Text(
          recipe.title,
          style: Theme.of(context).textTheme.displaySmall,
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: Sizes.s12.h),
          child: SizedBox(
            width: double.infinity,
            child: Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.spaceEvenly,
              crossAxisAlignment: WrapCrossAlignment.start,
              runSpacing: Sizes.s12.h,
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
                  text: recipe.dishTypes!.isNotEmpty
                      ? recipe.dishTypes![0]
                      : null,
                ),
              ],
            ),
          ),
        ),
        NutritionCard(
          nutritionData: recipe.nutritionData!,
        ),
        SizedBox(
          height: Sizes.s16.h,
        ),
        IngredientList(recipe: recipe),
        RecipeDetailsButtons(
          instructions: recipe.instructionsDetailed!,
          recipe: recipe,
        ),
        SizedBox(
          height: Sizes.s4.h,
        ),
      ],
    );
  }
}
