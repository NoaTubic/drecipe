import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/common/domain/entities/recipe.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/recipe_card_text.dart';
import 'package:flutter/material.dart';

import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(Sizes.circularRadius),
              boxShadow: shadowsLight,
            ),
            child: Ink(
              child: Container(
                width: Sizes.s260,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Sizes.circularRadius),
                  backgroundBlendMode: BlendMode.darken,
                  gradient: recipeCardGradient(),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(OpacityConstants.op02),
                        BlendMode.darken),
                    image: NetworkImage(recipe.image ?? ''),
                  ),
                ),
                child: InkWell(
                  onTap: () => ScreenRouter.pushScreen(
                      context, RecipeDetailsRoute(recipe: recipe)),
                  child: RecipeCardContent(
                    recipe: recipe,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: Sizes.s6,
        )
      ],
    );
  }
}
