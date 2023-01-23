import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/recipe_card_content.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';
import 'package:drecipe/features/favorite_recipes/di/providers.dart';
import 'package:drecipe/features/favorite_recipes/ui/widgets/heart_icon.dart';
import 'package:drecipe/features/recipe_details/di/providers.dart';
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
        .read(favoriteRecipesNotifierProvider.notifier)
        .checkIfFavoriteRecipeBool(recipeId: widget.recipe.id);
    log(isFavorite.toString());
    setState(() {});
  }

  Future<void> addRemoveRecipe(bool isFavorite) async {
    isFavorite
        ? null
        : ref.watch(recipeDetailsNotifierProvider).when(
            initial: () {
              return null;
            },
            loading: () {
              return null;
            },
            loaded: (recipe) {
              return ref
                  .read(favoriteRecipesNotifierProvider.notifier)
                  .addFavoriteRecipe(recipe: recipe);
            },
            error: (error) {
              return null;
            },
          );
  }

  @override
  Widget build(BuildContext context) {
    return SwipeActionCell(
      key: ObjectKey(widget.recipe),
      trailingActions: [
        SwipeAction(
          performsFirstActionWithFullSwipe: true,
          icon: widget.searchResults
              ? const HeartIcon(isFavorite: true)
              : Icon(
                  Icons.remove_circle_outline_rounded,
                  color: AppColors.white,
                ),
          color:
              widget.searchResults ? AppColors.secondaryLightRed3 : Colors.red,
          onTap: (handler) async {
            if (widget.searchResults) {
              await handler(false);
              addRemoveRecipe(isFavorite).whenComplete(
                () => setState(() => isFavorite = true),
              );
            } else {
              await handler(true);
              ref
                  .read(favoriteRecipesNotifierProvider.notifier)
                  .removeFavoriteRecipe(recipeId: widget.recipe.id);
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
                    .getRecipeDetails(
                      id: widget.recipe.id,
                    );

                AutoRouter.of(context)
                    .push(
                      RecipeDetailsScreenRoute(
                        recipeId: widget.recipe.id,
                        imageUrl: widget.recipe.image!,
                      ),
                    )
                    .then(
                      (value) => checkIfFavorite(),
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
                          tag: widget.recipe.id,
                          child: CachedNetworkImage(
                            width: Sizes.s100.w,
                            height: Sizes.s80.h,
                            fit: BoxFit.fitHeight,
                            imageUrl: widget.recipe.image!,
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    Sizes.circularRadius.r),
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
                    addRemoveRecipe(isFavorite);
                    setState(() {
                      isFavorite = !isFavorite;
                    });
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
