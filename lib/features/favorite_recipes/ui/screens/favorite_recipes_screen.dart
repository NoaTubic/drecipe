import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_app_bar.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_scaffold.dart';
import 'package:drecipe/features/common/ui/widgets/fade_mask.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';

class FavoriteRecipesScreen extends StatelessWidget {
  const FavoriteRecipesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return DrecipeScaffold(
      safeAreaBottom: false,
      appBar: DrecipeAppBar(
        title: s.favorite_recipes_title,
        backButton: false,
        elevated: false,
      ),
      body: const FavoriteRecipesBody(),
    );
  }
}

class FavoriteRecipesBody extends StatelessWidget {
  const FavoriteRecipesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: FadeMask(
            child: ListView.separated(
              itemBuilder: (context, index) => Container(),
              separatorBuilder: (context, index) => const SizedBox(
                height: Sizes.s16,
              ),
              itemCount: 8,
            ),
          ),
        ),
      ],
    );
  }
}
