import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/search_recipes/domain/state/filter/filter_recipes_notifier.dart';
import 'package:drecipe/features/search_recipes/domain/state/search/search_recipes_notifier.dart';
import 'package:drecipe/features/search_recipes/presentation/widgets/ingredients_section.dart';
import 'package:drecipe/features/search_recipes/presentation/widgets/search_results_list.dart';
import 'package:drecipe/features/search_recipes/presentation/widgets/sort/sorting_section.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchRecipesBody extends ConsumerWidget {
  const SearchRecipesBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = S.of(context);
    final filterState = ref.watch(filterRecipesNotifierProvider);
    final searchState = ref.watch(searchRecipesNotifierProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: Sizes.s12.w, right: Sizes.bodyHorizontalPadding.w),
          child: const SortingSection(),
        ),
        SizedBox(
          height: Sizes.s12.h,
        ),
        IngredientsSection(
          title: 'Included ingredients',
          ingredients: filterState.includeIngredients,
          icon: Icons.check_circle_rounded,
        ),
        IngredientsSection(
          title: 'Excluded ingredients',
          ingredients: filterState.excludeIngredients,
          icon: Icons.remove_circle_rounded,
        ),
        SearchResultsList(recipes: searchState.recipes),
      ],
    );
  }
}
