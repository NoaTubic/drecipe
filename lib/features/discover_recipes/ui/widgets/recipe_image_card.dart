import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';
import 'package:drecipe/features/common/ui/widgets/recipe_card_content.dart';
import 'package:drecipe/features/recipe_details/di/providers.dart';
import 'package:flutter/material.dart';

import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecipeImageCard extends ConsumerWidget {
  const RecipeImageCard({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final RecipeDiscover recipe;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Hero(
      tag: recipe.title,
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.circularRadius),
                boxShadow: shadowsLight,
              ),
              child: Container(
                width: Sizes.s260,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Sizes.circularRadius),
                  backgroundBlendMode: BlendMode.darken,
                  gradient: recipeCardGradient(),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(OpacityConstants.op03),
                        BlendMode.darken),
                    image: Image.network(
                      recipe.image ?? '',
                      loadingBuilder: ((context, child, loadingProgress) =>
                          Container(
                            color: AppColors.lightGrey1,
                          )),
                      errorBuilder: (context, e, stackTrace) =>
                          const Icon(Icons.error),
                    ).image,
                  ),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(Sizes.circularRadius),
                    onTap: () async {
                      Future.wait([
                        ref
                            .read(recipeDetailsNotifierProvider.notifier)
                            .getRecipeDetails(id: recipe.id),
                      ]).whenComplete(
                        () => ScreenRouter.pushScreen(
                          context,
                          RecipeDetailsScreenRoute(
                              recipeId: recipe.id, imageUrl: recipe.image!),
                        ),
                      );
                    },
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
      ),
    );
  }
}
