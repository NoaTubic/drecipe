import 'package:drecipe/features/common/ui/widgets/drecipe_app_bar.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_scaffold.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';

class FavoriteRecipesScreen extends StatelessWidget {
  const FavoriteRecipesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return DrecipeScaffold(
      appBar: DrecipeAppBar(
        title: s.favorite_recipes_title,
        backButton: false,
        elevated: false,
      ),
      body: Container(),
    );
  }
}
