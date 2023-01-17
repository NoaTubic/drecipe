import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/diet_badge.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecipeCardContent extends StatelessWidget {
  const RecipeCardContent({
    Key? key,
    required this.recipe,
    this.withDietBadges = true,
    this.withIngredientNumber = false,
    this.titleFontSize = FontSizes.s24,
    this.fontColor = Colors.white,
    this.padding,
  }) : super(key: key);

  final RecipeDiscover recipe;
  final bool withDietBadges;
  final double titleFontSize;
  final bool withIngredientNumber;
  final Color fontColor;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Padding(
      padding: padding ?? EdgeInsets.all(Sizes.s12.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (withDietBadges) ...[
            Align(
              alignment: Alignment.topRight,
              child: DietBadgesRow(
                isVege: recipe.vegan,
                isVegan: recipe.vegetarian,
                isGlutenFree: recipe.glutenFree,
              ),
            ),
            Expanded(
              child: Container(),
            ),
          ],
          Text(
            recipe.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: Theme.of(context).textTheme.headline2!.copyWith(
                color: fontColor,
                fontWeight: FontWeight.bold,
                fontSize: titleFontSize.sp),
          ),
          SizedBox(
            height: Sizes.s4.h,
          ),
          Row(
            children: [
              Icon(
                Icons.access_time_rounded,
                size: Sizes.s16.w,
                color: fontColor,
              ),
              const SizedBox(
                width: Sizes.s2,
              ),
              Text(
                '${recipe.readyInMinutes} ${s.discover_recipes_card_text_time}',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: fontColor),
              ),
              SizedBox(
                width: Sizes.s8.w,
              ),
              Icon(
                Icons.person,
                size: Sizes.s16.w,
                color: fontColor,
              ),
              SizedBox(
                width: Sizes.s2.w,
              ),
              Text(
                '${recipe.servings} ${s.discover_recipes_card_text_servings}',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: fontColor),
              ),
            ],
          ),
          if (withIngredientNumber) ...[
            SizedBox(
              height: Sizes.s8.h,
            ),
            Row(
              children: [
                Icon(
                  Icons.list_alt,
                  size: Sizes.s16.w,
                  color: fontColor,
                ),
                SizedBox(
                  width: Sizes.s2.w,
                ),
                Text(
                  '${recipe.servings} ${s.discover_recipes_card_text_ingredients}',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: fontColor),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
