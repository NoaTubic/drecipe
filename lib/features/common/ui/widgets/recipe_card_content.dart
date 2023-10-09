import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/diet_badge.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecipeCardContent extends StatelessWidget {
  const RecipeCardContent({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final RecipeDiscover recipe;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: Sizes.s192.w,
              child: Text(
                recipe.title,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: AppColors.black,
                      fontSize: FontSizes.s16.sp,
                    ),
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
              '${recipe.readyInMinutes} ${s.discover_recipes_card_text_time}',
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
              '${recipe.servings} ${s.discover_recipes_card_text_servings}',
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
                  '${recipe.numberOfIngredients} ${s.discover_recipes_card_text_ingredients}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            DietBadgesRow(
              isVege: recipe.vegan,
              isVegan: recipe.vegetarian,
              isGlutenFree: recipe.glutenFree,
            ),
          ],
        ),
      ],
    );
  }
}
