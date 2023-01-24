import 'package:cached_network_image/cached_network_image.dart';
import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/recipe_discover_card_content.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/loading_widgets/recipe_card_loading.dart';
import 'package:drecipe/features/recipe_details/di/providers.dart';
import 'package:flutter/material.dart';

import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecipeImageCard extends ConsumerWidget {
  const RecipeImageCard({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final RecipeDiscover recipe;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Hero(
      tag: '${HeroConstants.discoverImage}${recipe.id}',
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: Sizes.s260.w,
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: recipe.image!,
                placeholder: (context, url) => const RecipeCardLoading(),
                errorWidget: (context, url, error) => Container(
                  color: AppColors.lightGrey1,
                  child: const Icon(Icons.error),
                ),
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
                    gradient: recipeCardGradient(),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(OpacityConstants.op03),
                        BlendMode.darken,
                      ),
                      image: imageProvider,
                    ),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius:
                          BorderRadius.circular(Sizes.circularRadius.r),
                      onTap: () {
                        ref
                            .read(recipeDetailsNotifierProvider.notifier)
                            .getRecipeDetails(id: recipe.id);

                        ScreenRouter.pushScreen(
                          context,
                          RecipeDetailsScreenRoute(
                              recipeId: recipe.id, imageUrl: recipe.image!),
                        );
                      },
                      child: RecipeDiscoverCardContent(
                        recipe: recipe,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
