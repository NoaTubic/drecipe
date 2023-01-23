import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:drecipe/features/common/ui/widgets/diet_badge.dart';
import 'package:drecipe/features/favorite_recipes/di/providers.dart';
import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';
import 'package:drecipe/features/recipe_details/ui/widgets/heart_animation_widget.dart';
import 'package:flutter/material.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecipeDetailsImage extends ConsumerWidget {
  const RecipeDetailsImage({
    Key? key,
    required this.recipe,
    required this.imageUrl,
  }) : super(key: key);

  final Recipe recipe;
  final String imageUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onDoubleTap: () => log('double tapped'),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Hero(
            tag: recipe.id,
            child: SizedBox(
              height:
                  MediaQuery.of(context).size.height > Sizes.smallScreenHeight
                      ? Sizes.s168.h
                      : Sizes.s188.h,
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
                    border: Border.all(
                      color: AppColors.black.withOpacity(OpacityConstants.op01),
                    ),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(OpacityConstants.op01),
                            BlendMode.darken),
                        image: imageProvider),
                    boxShadow: shadows,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(Sizes.s12.w),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: DietBadgesRow(
                        isVege: recipe.vegan,
                        isVegan: recipe.vegetarian,
                        isGlutenFree: recipe.glutenFree,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: DurationConstants.d040),
            opacity: ref.watch(favoriteRecipesNotifierProvider).isHeartAnimating
                ? 1
                : 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
                border: Border.all(
                  color: AppColors.black.withOpacity(OpacityConstants.op02),
                ),
                color: AppColors.black.withOpacity(OpacityConstants.op05),
              ),
              height:
                  MediaQuery.of(context).size.height > Sizes.smallScreenHeight
                      ? Sizes.s168.h
                      : Sizes.s188.h,
            ),
          ),
          AnimatedOpacity(
            duration: const Duration(seconds: DurationConstants.d1),
            opacity:
                ref.watch(favoriteRecipesNotifierProvider).isHeartAnimating &&
                        ref.watch(favoriteRecipesNotifierProvider).isFavorite
                    ? 1
                    : 0,
            child: Column(
              children: [
                HeartAnimationWidget(
                  isAnimating: ref
                      .watch(favoriteRecipesNotifierProvider)
                      .isHeartAnimating,
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.secondaryLightRed1,
                    size: Sizes.s88,
                  ),
                ),
              ],
            ),
          ),
          AnimatedOpacity(
            duration: const Duration(seconds: DurationConstants.d1),
            opacity: ref.watch(favoriteRecipesNotifierProvider).isHeartAnimating
                ? 1
                : 0,
            child: Padding(
              padding: EdgeInsets.only(
                  top: ref.watch(favoriteRecipesNotifierProvider).isFavorite
                      ? Sizes.s100.h
                      : Sizes.s0),
              child: Text(
                ref.watch(favoriteRecipesNotifierProvider).isFavorite
                    ? 'Recipe added to favorites!'
                    : 'Recipe removed from favorites!',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: AppColors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
