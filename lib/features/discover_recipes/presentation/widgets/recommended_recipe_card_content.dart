import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_recommended.dart';

class RecommendedRecipeCardContent extends StatelessWidget {
  const RecommendedRecipeCardContent({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final RecipeRecommended recipe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: Sizes.s4.h, horizontal: Sizes.s4.w),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              recipe.title,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontSize: FontSizes.s14.sp),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: Sizes.s4.h,
            ),
          ],
        ),
      ),
    );
  }
}
