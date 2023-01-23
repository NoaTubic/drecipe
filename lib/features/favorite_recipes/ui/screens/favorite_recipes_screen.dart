import 'package:drecipe/features/common/domain/failures/failure.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_app_bar.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_scaffold.dart';
import 'package:drecipe/features/favorite_recipes/di/providers.dart';
import 'package:drecipe/features/favorite_recipes/ui/widgets/favorite_recipes_body.dart';
import 'package:drecipe/features/search_recipes/ui/widgets/search_recipes_loading_body.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteRecipesScreen extends ConsumerWidget {
  const FavoriteRecipesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = S.of(context);
    return DrecipeScaffold(
      padding: EdgeInsets.zero,
      safeAreaBottom: false,
      appBar: DrecipeAppBar(
        title: s.favorite_recipes_title,
        backButton: false,
        elevated: false,
      ),
      body: ref.watch(favoriteRecipesListNotifierProvider).when(
            initial: () => const SearchRecipesLoadingBody(),
            loading: () => const SearchRecipesLoadingBody(),
            loaded: (favoriteRecipes) {
              // ref
              //     .watch(recipesListProvider.notifier)
              //     .getFavoriteRecipes(favoriteRecipes);
              return FavoriteRecipesBody(
                favoriteRecipes: favoriteRecipes,
              );
            },
            error: (failure) => Text(
              failure.getFailureMessage(),
            ),
          ),
    );
  }
}
