import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/common/ui/widgets/loading_indicators/drecipe_refresh_indicator.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/discover_recipes.dart';
import 'package:drecipe/features/discover_recipes/ui/state/recipes/recipes_state.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/discover_recipes_body_error.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/meal_time_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:drecipe/features/discover_recipes/di/providers.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/discover_recipes_header.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/drecipe_card_swiper.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/loading_widgets/discover_recipes_body_loading.dart';

class DiscoverRecipesScreen extends ConsumerWidget {
  const DiscoverRecipesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(initRecipesProvider);
    ref.read(initMealTimeProvider);
    Future<void> refreshScreen() async {
      ref.read(recipesNotifierProvider.notifier).getRecipes();
      ref.read(mealTimeNotifierProvider.notifier).getMealTypeAndTime();
    }

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: DrecipeRefreshIndicator(
          onRefresh: () => refreshScreen(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DiscoverRecipesHeader(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const MealTimeCard(),
                      ref.watch<RecipesState>(recipesNotifierProvider).when(
                            initial: () => const DiscoverRecipesBodyLoading(),
                            loading: () => const DiscoverRecipesBodyLoading(),
                            loaded: (recipes) =>
                                DiscoverRecipesBody(recipes: recipes),
                            error: (error) => DiscoverRecipesBodyError(
                              error: error.getFailureMessage(),
                            ),
                          ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DiscoverRecipesBody extends StatelessWidget {
  const DiscoverRecipesBody({
    Key? key,
    required this.recipes,
  }) : super(key: key);

  final DiscoverRecipes recipes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrecipeCardSwiper(
          title: 'Random',
          recipes: recipes.randomRecipes,
        ),
        DrecipeCardSwiper(
          title: 'Popular',
          recipes: recipes.popularRecipes,
        ),
        DrecipeCardSwiper(
          title: 'Healthy',
          recipes: recipes.healthyRecipe,
        ),
      ],
    );
  }
}
