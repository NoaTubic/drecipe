import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/domain/entities/ingredient.dart';
import 'package:drecipe/features/common/domain/entities/recipe.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/drecipe_card_swiper.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/loading_widgets/recipe_card_loading.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DrecipeCardSwiperLoading extends StatelessWidget {
  const DrecipeCardSwiperLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Sizes.s12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Sizes.bodyHorizontalPadding),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.circularRadius),
                color: AppColors.white,
                boxShadow: shadowsLight,
              ),
              child: Shimmer.fromColors(
                baseColor:
                    AppColors.lightGrey1.withOpacity(OpacityConstants.op07),
                highlightColor:
                    AppColors.lightGrey1.withOpacity(OpacityConstants.op03),
                child: Container(
                  height: Sizes.s28,
                  width: Sizes.s160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Sizes.circularRadius),
                    color: AppColors.lightGrey1,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: Sizes.s12,
          ),
          DrecipeCarousel(
            items: const [loadingRecipe, loadingRecipe, loadingRecipe],
            itemCount: 3,
            builder: (context, item) => const RecipeCardLoading(),
            isScrollable: false,
          ),
        ],
      ),
    );
  }
}

const Recipe loadingRecipe = Recipe(
  id: 1,
  title: 'loading',
  servings: 1,
  image: 'loading',
  readyInMinutes: 1,
  dishTypes: ['loading'],
  vegetarian: false,
  vegan: false,
  glutenFree: false,
  veryPopular: false,
  vertHealthy: false,
  instructions: 'loading',
  ingredients: [Ingredient(id: 1, image: '', original: 'loading')],
);
