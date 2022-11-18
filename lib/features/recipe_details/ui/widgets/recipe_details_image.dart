import 'package:drecipe/features/common/ui/widgets/diet_badge.dart';
import 'package:drecipe/features/common/ui/widgets/loading_indicators/drecipe_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/domain/entities/recipe.dart';
import 'package:drecipe/features/common/ui/styles.dart';

class RecipeDetailsImage extends StatelessWidget {
  const RecipeDetailsImage({
    Key? key,
    required this.recipe,
    required this.imageUrl,
  }) : super(key: key);

  final Recipe recipe;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: recipe.title,
          child: Container(
            width: double.infinity,
            height: Sizes.s168,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.circularRadius),
              border: Border.all(
                color: AppColors.black.withOpacity(OpacityConstants.op01),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(OpacityConstants.op01),
                    BlendMode.darken),
                image: Image.network(
                  imageUrl,
                  loadingBuilder: (context, widget, event) =>
                      const Center(child: DrecipeCircularProgressIndicator()),
                  errorBuilder: (context, e, stackTrace) =>
                      const Icon(Icons.error),
                ).image,
              ),
              boxShadow: shadows,
            ),
            child: Padding(
              padding: const EdgeInsets.all(Sizes.s12),
              child: Align(
                alignment: Alignment.topRight,
                child: DietBadgesRow(
                  isVege: recipe.vegan,
                  isVegan: recipe.vegetarian,
                  isGlutenFree: recipe.glutenFree,
                ),
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0,
          child: Icon(
            Icons.favorite,
            color: AppColors.white,
            size: Sizes.s88,
          ),
        ),
      ],
    );
  }
}
