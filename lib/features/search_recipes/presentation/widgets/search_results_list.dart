import 'package:drecipe/features/common/ui/widgets/drecipe_list_divider.dart';
import 'package:drecipe/features/common/ui/widgets/recipe_card.dart';
import 'package:drecipe/features/discover_recipes/domain/entities/recipe_discover.dart';
import 'package:flutter/material.dart';

class SearchResultsList extends StatelessWidget {
  const SearchResultsList({
    super.key,
    required this.recipes,
  });

  final List<RecipeDiscover> recipes;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return RecipeCard(
            recipe: recipes[index],
            searchResults: true,
          );
        },
        separatorBuilder: (context, index) => const DrecipeListDivider(),
        itemCount: recipes.length,
      ),
    );
  }
}
