import 'dart:developer';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:drecipe/features/common/domain/providers/providers.dart';
import 'package:drecipe/features/common/ui/widgets/diet_badge.dart';
import 'package:drecipe/features/favorite_recipes/domain/notifiers/favorite_recipe/favorite_recipe_notifier.dart';
import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';
import 'package:drecipe/features/recipe_details/presentation/widgets/heart_animation_widget.dart';
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
    String getHeroTag(int currentIndex) {
      if (currentIndex == 0) {
        return HeroConstants.discoverImage;
      } else if (currentIndex == 1) {
        return HeroConstants.searchImage;
      } else {
        return HeroConstants.favoritesImage;
      }
    }

    return GestureDetector(
      onDoubleTap: () => log('double tapped'),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Hero(
            tag:
                '${getHeroTag(ref.read(bottomNavBarProvider).currentIndex)}${recipe.id}',
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
            opacity: ref.watch(favoriteRecipeNotifierProvider).isHeartAnimating
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
                ref.watch(favoriteRecipeNotifierProvider).isHeartAnimating &&
                        ref.watch(favoriteRecipeNotifierProvider).isFavorite
                    ? 1
                    : 0,
            child: Column(
              children: [
                HeartAnimationWidget(
                  isAnimating: ref
                      .watch(favoriteRecipeNotifierProvider)
                      .isHeartAnimating,
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.secondaryLightRed1,
                    size: Sizes.s88.w,
                  ),
                ),
              ],
            ),
          ),
          AnimatedOpacity(
            duration: const Duration(seconds: DurationConstants.d1),
            opacity: ref.watch(favoriteRecipeNotifierProvider).isHeartAnimating
                ? 1
                : 0,
            child: Padding(
              padding: EdgeInsets.only(
                  top: ref.watch(favoriteRecipeNotifierProvider).isFavorite
                      ? Sizes.s100.h
                      : Sizes.s0),
              child: Text(
                ref.watch(favoriteRecipeNotifierProvider).isFavorite
                    ? 'Recipe added to favorites!'
                    : 'Recipe removed from favorites!',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: AppColors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
