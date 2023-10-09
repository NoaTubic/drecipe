import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/di/providers.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/bottom_nav_bar/state/bottom_nav_bar_state.dart';
import 'package:drecipe/features/common/ui/widgets/recipe_card_content.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';
import 'package:drecipe/features/favorite_recipes/domain/notifiers/favorite_recipe/favorite_recipe_notifier.dart';
import 'package:drecipe/features/favorite_recipes/presentation/widgets/heart_icon.dart';
import 'package:drecipe/features/recipe_details/domain/state/recipe_details/recipe_details_notifier.dart';
import 'package:drecipe/features/recipe_details/presentation/widgets/heart_animation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swipe_action_cell/flutter_swipe_action_cell.dart';

class RecipeCard extends ConsumerStatefulWidget {
  const RecipeCard({
    Key? key,
    required this.recipe,
    this.isFavorite,
    this.searchResults = false,
  }) : super(key: key);

  final RecipeDiscover recipe;
  final bool? isFavorite;
  final bool searchResults;

  @override
  ConsumerState<RecipeCard> createState() => _RecipeCardState();
}

class _RecipeCardState extends ConsumerState<RecipeCard> {
  late bool isFavorite = false;

  @override
  void initState() {
    checkIfFavorite();
    super.initState();
  }

  Future<void> checkIfFavorite() async {
    isFavorite = await ref
        .read(favoriteRecipeNotifierProvider.notifier)
        .checkIfFavoriteRecipeBool(recipeId: widget.recipe.id);
    setState(() {});
  }

  Future<void> addRecipe() async {
    ref
        .read(recipeDetailsNotifierProvider.notifier)
        .getRecipeDetails(id: widget.recipe.id);
    await Future.delayed(const Duration(seconds: 1));

    if (!mounted) {
      return;
    }
    ref.watch(recipeDetailsNotifierProvider).maybeWhen(
          orElse: () {},
          loaded: (recipe) async {
            await ref
                .read(favoriteRecipeNotifierProvider.notifier)
                .addFavoriteRecipe(recipe: recipe);
            if (!mounted) {
              return;
            }
            setState(() {
              isFavorite = true;
            });
          },
        );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<BottomNavBarState>(
      bottomNavBarProvider,
      ((previous, next) {
        next.previousIndex == 2
            ? checkIfFavorite()
            : log('not checking if favorite');
      }),
    );
    return SwipeActionCell(
      key: ObjectKey(widget.recipe),
      trailingActions: [
        SwipeAction(
          performsFirstActionWithFullSwipe: true,
          icon: widget.searchResults
              ? HeartIcon(isFavorite: isFavorite)
              : Icon(
                  Icons.remove_circle_outline_rounded,
                  color: AppColors.white,
                ),
          color:
              widget.searchResults ? AppColors.secondaryLightRed3 : Colors.red,
          onTap: (handler) async {
            if (widget.searchResults) {
              await handler(false);
              log('adding');
              addRecipe();
            } else {
              await handler(true);
              ref
                  .read(favoriteRecipeNotifierProvider.notifier)
                  .removeFavoriteRecipe(
                      recipeId: widget.recipe.id, withAnimation: false);
              setState(() {});
            }
          },
        )
      ],
      child: Stack(
        children: [
          Material(
            color: AppColors.white,
            child: InkWell(
              onTap: () {
                ref
                    .read(recipeDetailsNotifierProvider.notifier)
                    .getRecipeDetails(id: widget.recipe.id);
                widget.searchResults
                    ? AutoRouter.of(context)
                        .push(
                          RecipeDetailsPageRoute(
                            recipeId: widget.recipe.id,
                            imageUrl: widget.recipe.image!,
                          ),
                        )
                        .then((value) => checkIfFavorite())
                    : AutoRouter.of(context).push(
                        RecipeDetailsPageRoute(
                          recipeId: widget.recipe.id,
                          imageUrl: widget.recipe.image!,
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
                        child: RecipeCardImage(
                          recipeId: widget.recipe.id,
                          recipeImage: widget.recipe.image!,
                          isFavorite: isFavorite,
                          searchResults: widget.searchResults,
                        ),
                      ),
                      SizedBox(
                        width: Sizes.s16.w,
                      ),
                      Flexible(
                        flex: 2,
                        child: RecipeCardContent(recipe: widget.recipe),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (widget.searchResults) ...[
            Padding(
              padding: EdgeInsets.only(right: Sizes.s28.w, top: Sizes.s8.h),
              child: Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    if (isFavorite) {
                      ref
                          .read(favoriteRecipeNotifierProvider.notifier)
                          .removeFavoriteRecipe(recipeId: widget.recipe.id);
                    } else {
                      log('adding');
                      addRecipe();
                    }
                    setState(() => isFavorite = !isFavorite);
                  },
                  child: HeartIcon(isFavorite: isFavorite),
                ),
              ),
            ),
          ]
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class RecipeCardImage extends ConsumerStatefulWidget {
  RecipeCardImage({
    Key? key,
    required this.recipeImage,
    required this.recipeId,
    required this.isFavorite,
    this.searchResults = false,
  }) : super(key: key);

  final int recipeId;
  final String recipeImage;
  late bool isFavorite;
  final bool? searchResults;

  @override
  ConsumerState<RecipeCardImage> createState() => _RecipeCardImageState();
}

class _RecipeCardImageState extends ConsumerState<RecipeCardImage> {
  Future<void> reverseAnimation() async {
    await Future.delayed(const Duration(seconds: DurationConstants.d2), () {});
    setState(() => widget.isFavorite = false);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isFavorite) {
      if (mounted) {
        reverseAnimation();
      }
    }
    return Hero(
      tag: widget.searchResults!
          ? '${HeroConstants.searchImage}${widget.recipeId}'
          : '${HeroConstants.favoritesImage}${widget.recipeId}',
      child: CachedNetworkImage(
        width: Sizes.s100.w,
        height: Sizes.s80.h,
        fit: BoxFit.fitHeight,
        imageUrl: widget.recipeImage,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
            gradient: recipeCardGradient(),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: imageProvider,
            ),
          ),
          child: widget.searchResults!
              ? AnimatedOpacity(
                  duration: const Duration(seconds: DurationConstants.d1),
                  opacity: widget.isFavorite ? 1 : 0,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      AnimatedOpacity(
                        duration: const Duration(
                            milliseconds: DurationConstants.d040),
                        opacity: widget.isFavorite ? 1 : 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Sizes.circularRadius.r),
                            border: Border.all(
                              color: AppColors.black
                                  .withOpacity(OpacityConstants.op02),
                            ),
                            color: AppColors.black
                                .withOpacity(OpacityConstants.op05),
                          ),
                          width: Sizes.s100.w,
                          height: MediaQuery.of(context).size.height >
                                  Sizes.smallScreenHeight
                              ? Sizes.s80.h
                              : Sizes.s100.h,
                        ),
                      ),
                      HeartAnimationWidget(
                        isAnimating: widget.isFavorite,
                        child: Icon(
                          Icons.favorite,
                          color: AppColors.secondaryLightRed1,
                          size: Sizes.s40.w,
                        ),
                      ),
                    ],
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
