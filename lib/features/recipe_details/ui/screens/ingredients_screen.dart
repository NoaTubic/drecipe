import 'package:drecipe/features/common/ui/sizes/sizes.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_app_bar.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_scaffold.dart';
import 'package:drecipe/features/common/ui/widgets/fade_mask.dart';
import 'package:drecipe/features/recipe_details/ui/widgets/ingredient_card.dart';
import 'package:flutter/material.dart';

import 'package:drecipe/features/common/domain/entities/recipe.dart';

class IngredientsScreen extends StatelessWidget {
  const IngredientsScreen({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final Recipe recipe;
  @override
  Widget build(BuildContext context) {
    return DrecipeScaffold(
      appBar: const DrecipeAppBar(title: 'Ingredients'),
      body: Container(
        padding: const EdgeInsets.only(top: Sizes.s4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.circularRadius),
        ),
        child: FadeMask(
          child: ListView.separated(
            itemBuilder: (context, index) => IngredientCard(
              ingredient: recipe.ingredients![index],
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: Sizes.s12,
            ),
            itemCount: recipe.ingredients!.length,
          ),
        ),
      ),
    );
  }
}
