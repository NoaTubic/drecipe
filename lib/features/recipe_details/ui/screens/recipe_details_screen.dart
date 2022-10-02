import 'package:drecipe/features/common/ui/widgets/drecipe_app_bar.dart';
import 'package:drecipe/features/recipe_details/ui/widgets/recipe_details_body.dart';
import 'package:drecipe/features/recipe_details/ui/widgets/recipe_details_body_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_scaffold.dart';
import 'package:drecipe/features/recipe_details/di/providers.dart';

class RecipeDetailsScreen extends ConsumerWidget {
  const RecipeDetailsScreen({
    required this.recipeId,
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  final int recipeId;
  final String imageUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DrecipeScaffold(
      appBar: const DrecipeAppBar(
        elevated: false,
      ),
      body: ref.watch(recipeDetailsNotifierProvider).when(
            initial: () => RecipeDetailsBodyLoading(
              recipeId: recipeId,
            ),
            loading: () => RecipeDetailsBodyLoading(
              recipeId: recipeId,
            ),
            loaded: (recipe) => RecipeDetailsBody(
              recipe: recipe,
              imageUrl: imageUrl,
            ),
            error: (failure) => Container(),
          ),
    );
  }
}
