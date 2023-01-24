import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/recipe_card.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';
import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteRecipesBody extends StatelessWidget {
  const FavoriteRecipesBody({
    Key? key,
    required this.favoriteRecipes,
  }) : super(key: key);

  final List<Recipe> favoriteRecipes;

  @override
  Widget build(BuildContext context) {
    return favoriteRecipes.isEmpty
        ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.heart_broken_rounded,
                  size: Sizes.iconSizeBig.w,
                  color: AppColors.secondaryLightRed1,
                ),
                const Text('No favorite recipes yet.'),
                const Text('Favorite recipes will be listed here.'),
              ],
            ),
          )
        : ListView.separated(
            itemBuilder: (context, index) => RecipeCard(
              recipe: RecipeDiscover(
                id: favoriteRecipes[index].id,
                title: favoriteRecipes[index].title,
                servings: favoriteRecipes[index].servings,
                image: favoriteRecipes[index].image,
                readyInMinutes: favoriteRecipes[index].readyInMinutes,
                numberOfIngredients: favoriteRecipes[index].ingredients!.length,
                vegetarian: favoriteRecipes[index].vegetarian,
                vegan: favoriteRecipes[index].vegan,
                glutenFree: favoriteRecipes[index].glutenFree,
                veryPopular: favoriteRecipes[index].veryPopular,
                veryHealthy: favoriteRecipes[index].veryHealthy,
              ),
            ),
            separatorBuilder: (context, index) => Divider(
              height: Sizes.borderWidth,
              indent: Sizes.s100.w,
              color: AppColors.lightGrey1,
            ),
            itemCount: favoriteRecipes.length,
          );
  }
}
