import 'package:drecipe/features/common/ui/widgets/loading_indicators/drecipe_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:drecipe/features/common/domain/entities/recipe.dart';
import 'package:drecipe/features/discover_recipes/di/providers.dart';
import 'package:drecipe/features/discover_recipes/ui/state/recipes_state.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/discover_recipes_header.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/drecipe_card_swiper.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/loading_widgets/discover_recipes_body_loading.dart';

class DiscoverRecipesScreen extends ConsumerWidget {
  const DiscoverRecipesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(initRecipesProvider);
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DiscoverRecipesHeader(),
            Expanded(
              child: DrecipeRefreshIndicator(
                onRefresh: () =>
                    ref.read(recipesNotifierProvider.notifier).getRecipes(),
                child: ref.watch<RecipesState>(recipesNotifierProvider).when(
                      initial: () => const DiscoverRecipesBodyLoading(),
                      loading: () => const DiscoverRecipesBodyLoading(),
                      loaded: (recipes) =>
                          DiscoverRecipesBody(recipes: recipes),
                      error: (error) => Container(),
                    ),
              ),
            ),
          ],
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

  final List<Recipe> recipes;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DrecipeCardSwiper(
            title: 'Random',
            recipes: recipes,
          ),
          DrecipeCardSwiper(
            title: 'Random',
            recipes: recipes,
          ),
          DrecipeCardSwiper(
            title: 'Random',
            recipes: recipes,
          ),
          DrecipeCardSwiper(
            title: 'Random',
            recipes: recipes,
          ),
        ],
      ),
    );
  }
}
