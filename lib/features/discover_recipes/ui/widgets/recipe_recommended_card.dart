import 'package:cached_network_image/cached_network_image.dart';
import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/recommended_recipe_card_content.dart';
import 'package:drecipe/features/recipe_details/di/providers.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_recommended.dart';
import 'package:shimmer/shimmer.dart';

class RecipeRecommendedCard extends ConsumerWidget {
  const RecipeRecommendedCard({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final RecipeRecommended recipe;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
        onTap: () {
          ref
              .read(recipeDetailsNotifierProvider.notifier)
              .getRecipeDetails(id: recipe.id);

          ScreenRouter.pushScreen(
            context,
            RecipeDetailsScreenRoute(
              recipeId: recipe.id,
              imageUrl: recipe.image!,
            ),
          );
        },
        child: Hero(
          tag: '${HeroConstants.discoverImage}${recipe.id}',
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: Sizes.s156.w,
                child: CachedNetworkImage(
                  imageUrl: recipe.image!,
                  placeholder: (context, url) =>
                      const ReccomendedCardImageLoading(),
                  errorWidget: (context, url, error) => Container(
                    color: AppColors.lightGrey1,
                    child: const Icon(Icons.error),
                  ),
                  imageBuilder: (context, imageProvider) => Container(
                    width: Sizes.s140.w,
                    height: Sizes.s98.h,
                    decoration: BoxDecoration(
                      gradient: recipeCardGradientDarker(),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          Sizes.circularRadius.r,
                        ),
                        topLeft: Radius.circular(
                          Sizes.circularRadius.r,
                        ),
                      ),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.fitWidth,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(OpacityConstants.op07),
                          BlendMode.dstATop,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Sizes.s12.w,
                        vertical: Sizes.s4.h,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.access_time_rounded,
                                size: Sizes.s16.w,
                                color: AppColors.white,
                              ),
                              SizedBox(
                                width: Sizes.s2.w,
                              ),
                              Text(
                                '${recipe.readyInMinutes} ${S.of(context).discover_recipes_card_text_time}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: AppColors.white,
                                    ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.person,
                                size: Sizes.s16.w,
                                color: AppColors.white,
                              ),
                              SizedBox(
                                width: Sizes.s2.w,
                              ),
                              Text(
                                '${recipe.servings} ${S.of(context).discover_recipes_card_text_servings}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: AppColors.white,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: Sizes.s48.h,
                width: Sizes.s156.w,
                decoration: BoxDecoration(
                  color:
                      AppColors.lightGrey1.withOpacity(OpacityConstants.op05),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(
                      Sizes.circularRadius.r,
                    ),
                    bottomLeft: Radius.circular(
                      Sizes.circularRadius.r,
                    ),
                  ),
                ),
                child: RecommendedRecipeCardContent(
                  recipe: recipe,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ReccomendedCardImageLoading extends StatelessWidget {
  const ReccomendedCardImageLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
        color: AppColors.white,
      ),
      child: Shimmer.fromColors(
        baseColor: AppColors.lightGrey1.withOpacity(OpacityConstants.op07),
        highlightColor: AppColors.lightGrey1.withOpacity(OpacityConstants.op03),
        child: Container(
          height: Sizes.s98.h,
          width: Sizes.s156.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Sizes.circularRadius.r),
              topRight: Radius.circular(Sizes.circularRadius.r),
            ),
            color: AppColors.lightGrey1,
          ),
        ),
      ),
    );
  }
}
