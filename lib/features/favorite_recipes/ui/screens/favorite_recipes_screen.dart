import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_app_bar.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_scaffold.dart';
import 'package:drecipe/features/common/ui/widgets/fade_mask.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';
import 'package:drecipe/features/common/ui/widgets/recipe_card_content.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';

class FavoriteRecipesScreen extends StatelessWidget {
  const FavoriteRecipesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return DrecipeScaffold(
      safeAreaBottom: false,
      appBar: DrecipeAppBar(
        title: s.favorite_recipes_title,
        backButton: false,
        elevated: false,
      ),
      body: const FavoriteRecipesBody(),
    );
  }
}

class FavoriteRecipesBody extends StatelessWidget {
  const FavoriteRecipesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: FadeMask(
            child: ListView.separated(
              itemBuilder: (context, index) => const RecipeCard(),
              separatorBuilder: (context, index) => const SizedBox(
                height: Sizes.s16,
              ),
              itemCount: 8,
            ),
          ),
        ),
      ],
    );
  }
}

class RecipeCard extends StatelessWidget {
  const RecipeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.circularRadius),
        color: AppColors.lightGrey1,
        boxShadow: shadowsLight,
      ),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(Sizes.s12),
                child: Container(
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Sizes.circularRadius),
                    backgroundBlendMode: BlendMode.darken,
                    gradient: recipeCardGradient(),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(OpacityConstants.op03),
                          BlendMode.darken),
                      image: const NetworkImage(
                          'https://storage.googleapis.com/proudcity/mebanenc/uploads/2021/03/placeholder-image.png'),
                    ),
                  ),
                ),
              ),
            ),
            const Flexible(
              child: SizedBox(
                child: RecipeCardContent(
                  titleFontSize: FontSizes.s18,
                  withDietBadges: false,
                  withIngredientNumber: true,
                  recipe: RecipeDiscover(
                    id: 1,
                    title: 'This is a super super long title ',
                    servings: 2,
                    readyInMinutes: 20,
                    vegetarian: true,
                    vegan: true,
                    glutenFree: true,
                    veryPopular: false,
                    veryHealthy: false,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// image
// title
//  time
//
