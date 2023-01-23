import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/recipe_card.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';
import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteRecipesBody extends ConsumerStatefulWidget {
  const FavoriteRecipesBody({
    Key? key,
    required this.favoriteRecipes,
  }) : super(key: key);

  final List<Recipe> favoriteRecipes;

  @override
  ConsumerState<FavoriteRecipesBody> createState() =>
      _FavoriteRecipesBodyState();
}

class _FavoriteRecipesBodyState extends ConsumerState<FavoriteRecipesBody> {
  bool isFavorite = true;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => RecipeCard(
          recipe: RecipeDiscover(
            id: widget.favoriteRecipes[index].id,
            title: widget.favoriteRecipes[index].title,
            servings: widget.favoriteRecipes[index].servings,
            image: widget.favoriteRecipes[index].image,
            readyInMinutes: widget.favoriteRecipes[index].readyInMinutes,
            numberOfIngredients:
                widget.favoriteRecipes[index].ingredients!.length,
            vegetarian: widget.favoriteRecipes[index].vegetarian,
            vegan: widget.favoriteRecipes[index].vegan,
            glutenFree: widget.favoriteRecipes[index].glutenFree,
            veryPopular: widget.favoriteRecipes[index].veryPopular,
            veryHealthy: widget.favoriteRecipes[index].veryHealthy,
          ),
        ),
        separatorBuilder: (context, index) => Divider(
          height: Sizes.borderWidth,
          indent: Sizes.s100.w,
          color: AppColors.lightGrey1,
        ),
        itemCount: widget.favoriteRecipes.length,
      ),
    );
  }
}
