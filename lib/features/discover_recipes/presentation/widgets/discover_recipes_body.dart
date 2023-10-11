import 'package:drecipe/features/discover_recipes/domain/entities/discover_recipes.dart';
import 'package:drecipe/features/discover_recipes/domain/notifiers/recipes/recommended_recipes_notifier.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'package:drecipe/features/discover_recipes/presentation/widgets/drecipe_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DiscoverRecipesBody extends ConsumerWidget {
  const DiscoverRecipesBody({
    Key? key,
    required this.recipes,
  }) : super(key: key);

  final DiscoverRecipes recipes;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = S.of(context);
    final recommendedRecipesState =
        ref.watch(recommendedRecipesNotifierProvider);
    final List<Object> recommendedRecipes = recommendedRecipesState.maybeWhen(
      orElse: () => [],
      loaded: (recipes) => recipes,
    );
    return Column(
      children: [
        DrecipeCardSwiper(
          title: s.discover_recipes_recommended,
          recipes: recommendedRecipes,
          recommendedRecipes: true,
        ),
        DrecipeCardSwiper(
          title: s.discover_recipes_random,
          recipes: recipes.randomRecipes,
        ),
        DrecipeCardSwiper(
          title: s.discover_recipes_popular,
          recipes: recipes.popularRecipes,
        ),
        DrecipeCardSwiper(
          title: s.discover_recipes_healthy,
          recipes: recipes.healthyRecipes,
        ),
      ],
    );
  }
}
