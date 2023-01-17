import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_text_button_primary.dart';
import 'package:drecipe/features/common/ui/widgets/fade_mask.dart';
import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';
import 'package:drecipe/features/recipe_details/ui/widgets/ingredient_card.dart';
import 'package:flutter/material.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IngredientList extends StatelessWidget {
  const IngredientList({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ingredients',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                '${recipe.ingredients!.length} items',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              DrecipeTextButtonPrimary(
                text: 'See All',
                textColor: AppColors.primaryRed,
                onPressed: () => ScreenRouter.pushScreen(
                    context, IngredientsScreenRoute(recipe: recipe)),
              )
            ],
          ),
          SizedBox(
            height: Sizes.s12.h,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
              ),
              child: FadeMask(
                scrollController: scrollController,
                child: ListView.separated(
                  controller: scrollController,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => IngredientCard(
                    ingredient: recipe.ingredients![index],
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    height: Sizes.s12.h,
                  ),
                  itemCount: recipe.ingredients!.length,
                ),
              ),
            ),
          ),
          SizedBox(
            height: Sizes.s12.h,
          ),
        ],
      ),
    );
  }
}
