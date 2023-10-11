import 'package:drecipe/features/common/ui/sizes/sizes.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_app_bar.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_scaffold.dart';
import 'package:drecipe/features/common/ui/widgets/fade_mask.dart';
import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';
import 'package:drecipe/features/recipe_details/presentation/widgets/ingredient_card.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IngredientsPage extends StatelessWidget {
  const IngredientsPage({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final Recipe recipe;
  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return DrecipeScaffold(
      appBar: DrecipeAppBar(
          title: S.of(context).recipe_details_instructions_ingredients),
      body: Container(
        padding: EdgeInsets.only(top: Sizes.s4.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
        ),
        child: FadeMask(
          scrollController: scrollController,
          child: ListView.separated(
            controller: scrollController,
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
    );
  }
}
