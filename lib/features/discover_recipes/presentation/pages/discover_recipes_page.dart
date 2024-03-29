import 'package:drecipe/features/common/ui/widgets/drecipe_scaffold.dart';
import 'package:drecipe/features/common/ui/widgets/loading_indicators/drecipe_refresh_indicator.dart';
import 'package:drecipe/features/common/ui/widgets/no_internet_connection_body.dart';
import 'package:drecipe/features/discover_recipes/domain/notifiers/meal_time/meal_time_notifier.dart';
import 'package:drecipe/features/discover_recipes/domain/notifiers/recipes/recipes_notifier.dart';
import 'package:drecipe/features/discover_recipes/presentation/widgets/discover_recipes_body.dart';
import 'package:drecipe/features/discover_recipes/presentation/widgets/discover_recipes_body_error.dart';
import 'package:drecipe/features/discover_recipes/presentation/widgets/meal_time_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drecipe/features/discover_recipes/presentation/widgets/discover_recipes_header.dart';
import 'package:drecipe/features/discover_recipes/presentation/widgets/loading_widgets/discover_recipes_body_loading.dart';

class DiscoverRecipesPage extends ConsumerWidget {
  const DiscoverRecipesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(recipesNotifierProvider);
    ref.watch(mealTimeNotifierProvider);
    Future<void> refreshScreen() async {
      ref.read(recipesNotifierProvider.notifier).getRecipes();
      ref.read(mealTimeNotifierProvider.notifier).getMealTypeAndTime();
    }

    return DrecipeScaffold(
      padding: EdgeInsets.zero,
      safeAreaBottom: true,
      body: DrecipeRefreshIndicator(
        onRefresh: () => refreshScreen(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DiscoverRecipesHeader(),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const MealTimeCard(),
                    ref.watch(recipesNotifierProvider).when(
                          initial: () => const DiscoverRecipesBodyLoading(),
                          loading: () => const DiscoverRecipesBodyLoading(),
                          loaded: (recipes) =>
                              DiscoverRecipesBody(recipes: recipes),
                          error: (error) => DiscoverRecipesBodyError(
                            error: error,
                          ),
                          offline: () => const NoInternetConnectionBody(),
                        ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
