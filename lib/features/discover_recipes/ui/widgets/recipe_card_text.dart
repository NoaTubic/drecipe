import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/diet_badge.dart';

class RecipeCardContent extends StatelessWidget {
  const RecipeCardContent({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final RecipeDiscover recipe;
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Padding(
      padding: const EdgeInsets.all(Sizes.s12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: DietBadgesRow(
              isVege: recipe.vegan,
              isVegan: recipe.vegetarian,
              isGlutenFree: recipe.glutenFree,
            ),
          ),
          Expanded(child: Container()),
          Text(
            recipe.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Icon(
                Icons.access_time_rounded,
                size: Sizes.s16,
                color: AppColors.white,
              ),
              const SizedBox(
                width: Sizes.s2,
              ),
              Text(
                '${recipe.readyInMinutes} ${s.discover_recipes_card_text_time}',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(
                width: Sizes.s8,
              ),
              Icon(
                Icons.person,
                size: Sizes.s16,
                color: AppColors.white,
              ),
              const SizedBox(
                width: Sizes.s2,
              ),
              Text(
                '${recipe.servings} ${s.discover_recipes_card_text_servings}',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
