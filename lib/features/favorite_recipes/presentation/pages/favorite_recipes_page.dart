import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_app_bar.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_scaffold.dart';
import 'package:drecipe/features/favorite_recipes/domain/notifiers/favorite_recipes_list/favorite_recipes_list_notifier.dart';
import 'package:drecipe/features/favorite_recipes/presentation/widgets/favorite_recipes_body.dart';
import 'package:drecipe/features/search_recipes/presentation/widgets/search_recipes_loading_body.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteRecipesPage extends ConsumerWidget {
  const FavoriteRecipesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = S.of(context);
    return DrecipeScaffold(
      padding: EdgeInsets.zero,
      safeAreaBottom: false,
      appBar: DrecipeAppBar(
        appBarContent: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite,
              color: AppColors.primaryRed,
            ),
            SizedBox(
              width: Sizes.s12.w,
            ),
            Text(s.favorite_recipes_title)
          ],
        ),
        title: s.favorite_recipes_title,
        backButton: false,
        elevated: false,
      ),
      body: ref.watch(favoriteRecipesListNotifierProvider).when(
            initial: () => const SearchRecipesLoadingBody(),
            loading: () => const SearchRecipesLoadingBody(),
            loaded: (favoriteRecipes) {
              return FavoriteRecipesBody(
                favoriteRecipes: favoriteRecipes,
              );
            },
            error: (error) => Text(
              error,
            ),
          ),
    );
  }
}
