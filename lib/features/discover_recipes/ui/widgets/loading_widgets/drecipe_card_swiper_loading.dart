import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/drecipe_card_swiper.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/loading_widgets/recipe_card_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DrecipeCardSwiperLoading extends StatelessWidget {
  const DrecipeCardSwiperLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Sizes.s8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Sizes.bodyHorizontalPadding),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
                color: AppColors.white,
              ),
              child: Shimmer.fromColors(
                baseColor:
                    AppColors.lightGrey1.withOpacity(OpacityConstants.op07),
                highlightColor:
                    AppColors.lightGrey1.withOpacity(OpacityConstants.op03),
                child: Container(
                  height: Sizes.s20.h,
                  width: Sizes.s108.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
                    color: AppColors.lightGrey1,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: Sizes.s12.h,
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

const RecipeDiscover loadingRecipe = RecipeDiscover(
  id: 1,
  title: 'loading',
  servings: 1,
  image: 'loading',
  readyInMinutes: 1,
  vegetarian: false,
  vegan: false,
  glutenFree: false,
  veryPopular: false,
  veryHealthy: false,
);
