import 'package:cached_network_image/cached_network_image.dart';
import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/diet_badge.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';
import 'package:drecipe/features/recipe_details/di/providers.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecipeCard extends ConsumerWidget {
  const RecipeCard({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final RecipeDiscover recipe;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = S.of(context);
    return Material(
      color: AppColors.white,
      child: InkWell(
        onTap: () {
          ref.read(recipeDetailsNotifierProvider.notifier).getRecipeDetails(
                id: recipe.id,
              );
          ScreenRouter.pushScreen(
            context,
            RecipeDetailsScreenRoute(
              recipeId: recipe.id,
              imageUrl: recipe.image!,
            ),
          );
        },
        child: Padding(
          padding: EdgeInsets.only(
            left: Sizes.s12.w,
            right: Sizes.s12.w,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: Sizes.s12.h,
              horizontal: Sizes.s2.w,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                Sizes.circularRadius.r,
              ),
            ),
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Hero(
                    tag: recipe.id,
                    child: CachedNetworkImage(
                      width: Sizes.s100.w,
                      height: Sizes.s80.h,
                      fit: BoxFit.fitHeight,
                      imageUrl: recipe.image!,
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Sizes.circularRadius.r),
                          gradient: recipeCardGradient(),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: imageProvider,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: Sizes.s16.w,
                ),
                Flexible(
                  flex: 2,
                  child: RecipeCardContent(recipe: recipe),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RecipeCardContent extends StatefulWidget {
  const RecipeCardContent({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final RecipeDiscover recipe;

  @override
  State<RecipeCardContent> createState() => _RecipeCardContentState();
}

class _RecipeCardContentState extends State<RecipeCardContent> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: Sizes.s200.w,
              child: Text(
                widget.recipe.title,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: AppColors.black,
                    ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(
                  () {
                    isFavorite = !isFavorite;
                  },
                );
              },
              child: Icon(
                isFavorite
                    ? Icons.favorite_rounded
                    : Icons.favorite_border_rounded,
                size: Sizes.iconSizeMedium.w,
                color: isFavorite ? AppColors.primaryRed : AppColors.lightGrey4,
              ),
            ),
          ],
        ),
        SizedBox(
          height: Sizes.s4.h,
        ),
        Row(
          children: [
            Icon(
              Icons.access_time_rounded,
              size: Sizes.s16.w,
              color: AppColors.black,
            ),
            const SizedBox(
              width: Sizes.s2,
            ),
            Text(
              '${widget.recipe.readyInMinutes} ${s.discover_recipes_card_text_time}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(
              width: Sizes.s8.w,
            ),
            Icon(
              Icons.person,
              size: Sizes.s16.w,
              color: AppColors.black,
            ),
            SizedBox(
              width: Sizes.s2.w,
            ),
            Text(
              '${widget.recipe.servings} ${s.discover_recipes_card_text_servings}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(
              width: Sizes.s8.w,
            ),
          ],
        ),
        SizedBox(
          height: Sizes.s4.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.list_alt,
                  size: Sizes.s16.w,
                  color: AppColors.black,
                ),
                SizedBox(
                  width: Sizes.s2.w,
                ),
                Text(
                  '${widget.recipe.numberOfIngredients} ${s.discover_recipes_card_text_ingredients}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            DietBadgesRow(
              isVege: widget.recipe.vegan,
              isVegan: widget.recipe.vegetarian,
              isGlutenFree: widget.recipe.glutenFree,
            ),
          ],
        ),
      ],
    );
  }
}
