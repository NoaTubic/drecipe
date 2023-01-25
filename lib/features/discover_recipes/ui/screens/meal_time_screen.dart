import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_app_bar.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_list_divider.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_scaffold.dart';
import 'package:drecipe/features/common/ui/widgets/recipe_card.dart';
import 'package:drecipe/features/discover_recipes/di/providers.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';
import 'package:drecipe/features/search_recipes/ui/widgets/search_recipes_loading_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/cli_commands.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';

class MealTimeScreen extends ConsumerWidget {
  const MealTimeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mealTimeState = ref.watch(mealTimeNotifierProvider);
    final mealTimeRecipesState = ref.watch(mealTimeRecipesProvider);
    final mealTimeRecipes = ref.watch(mealTimeRecipesProvider).mealTimeRecipes;
    return DrecipeScaffold(
      padding: EdgeInsets.zero,
      appBar: DrecipeAppBar(
        appBarContent: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(mealTimeState.mealType.capitalize()),
            SizedBox(
              width: Sizes.s16.w,
            ),
            Image.asset(
              mealTimeState.mealTypeIcon,
              width: Sizes.s28.w,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: InfiniteList(
              isLoading: mealTimeRecipesState.isLoading,
              hasError: mealTimeRecipesState.showErrorMessages,
              debounceDuration: const Duration(seconds: DurationConstants.d1),
              emptyBuilder: (context) => const SearchRecipesLoadingBody(),
              loadingBuilder: (context) => mealTimeRecipes.isEmpty
                  ? const SearchRecipesLoadingBody()
                  : CircularProgressIndicator.adaptive(
                      backgroundColor: AppColors.primaryRed,
                    ),
              errorBuilder: (context) => Center(
                child: Text(ref.read(mealTimeRecipesProvider).error),
              ),
              itemBuilder: (context, index) => RecipeCard(
                searchResults: true,
                recipe: RecipeDiscover(
                  id: mealTimeRecipes[index].id,
                  title: mealTimeRecipes[index].title,
                  servings: mealTimeRecipes[index].servings,
                  image: mealTimeRecipes[index].image,
                  readyInMinutes: mealTimeRecipes[index].readyInMinutes,
                  numberOfIngredients:
                      mealTimeRecipes[index].numberOfIngredients,
                  vegetarian: mealTimeRecipes[index].vegetarian,
                  vegan: mealTimeRecipes[index].vegan,
                  glutenFree: mealTimeRecipes[index].glutenFree,
                  veryPopular: mealTimeRecipes[index].veryPopular,
                  veryHealthy: mealTimeRecipes[index].veryHealthy,
                ),
              ),
              itemCount: mealTimeRecipes.length,
              onFetchData: () {
                ref.read(mealTimeRecipesProvider.notifier).getMealTimeRecipes();
              },
              separatorBuilder: (context, index) => const DrecipeListDivider(),
            ),
          ),
        ],
      ),
    );
  }
}
