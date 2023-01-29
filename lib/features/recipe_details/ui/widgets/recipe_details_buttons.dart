import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_button.dart';
import 'package:drecipe/features/favorite_recipes/di/providers.dart';
import 'package:drecipe/features/favorite_recipes/ui/widgets/heart_icon.dart';
import 'package:drecipe/features/recipe_details/domain/entities/instructions.dart';
import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';
import 'package:flutter/material.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecipeDetailsButtons extends ConsumerStatefulWidget {
  const RecipeDetailsButtons({
    Key? key,
    required this.instructions,
    required this.recipe,
  }) : super(key: key);

  final List<Instructions> instructions;
  final Recipe recipe;

  @override
  ConsumerState<RecipeDetailsButtons> createState() =>
      _RecipeDetailsButtonsState();
}

class _RecipeDetailsButtonsState extends ConsumerState<RecipeDetailsButtons> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await ref
          .read(favoriteRecipeNotifierProvider.notifier)
          .checkIfFavoriteRecipe(recipeId: widget.recipe.id);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isFavorite = ref.watch(favoriteRecipeNotifierProvider).isFavorite;
    final favoriteRecipesNotifier =
        ref.read(favoriteRecipeNotifierProvider.notifier);
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: ElevatedButton(
            onPressed: () {
              isFavorite
                  ? favoriteRecipesNotifier.removeFavoriteRecipe(
                      recipeId: widget.recipe.id)
                  : favoriteRecipesNotifier.addFavoriteRecipe(
                      recipe: widget.recipe);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
                side: BorderSide(
                  color: Colors.grey.shade200,
                  width: Sizes.borderWidth,
                ),
              ),
            ),
            child: HeartIcon(isFavorite: isFavorite),
          ),
        ),
        SizedBox(
          width: Sizes.s20.w,
        ),
        Flexible(
          flex: 3,
          child: DrecipeButton(
            text: 'Step by Step Instructions',
            onPressed: () => ScreenRouter.pushScreen(
              context,
              DetailedInstructionsScreenRoute(
                  instructions: widget.instructions),
            ),
          ),
        ),
      ],
    );
  }
}
