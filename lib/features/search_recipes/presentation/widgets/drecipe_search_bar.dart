import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/search_recipes/domain/state/search/search_recipes_notifier.dart';
import 'package:drecipe/features/search_recipes/presentation/widgets/search_suggestions_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';

class DrecipeSearchBar extends ConsumerWidget {
  const DrecipeSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = FloatingSearchBarController();
    final double screenWidth = MediaQuery.of(context).size.width;
    final state = ref.watch(searchRecipesNotifierProvider);
    final searchRecipesNotifier =
        ref.read(searchRecipesNotifierProvider.notifier);
    return Padding(
      padding: EdgeInsets.only(
        top: Sizes.s4.h,
        left: Sizes.s4.w,
      ),
      child: FloatingSearchBar(
        controller: controller,
        onQueryChanged: (query) =>
            searchRecipesNotifier.autocompleteRecipeSearch(query),
        onSubmitted: (query) => searchRecipesNotifier.searchRecipes(),
        elevation: Sizes.s0,
        borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
        border: BorderSide(
          color: AppColors.black.withOpacity(OpacityConstants.op02),
          width: Sizes.borderWidth,
        ),
        backgroundColor: AppColors.white,
        backdropColor: AppColors.lightGrey1,
        width: 0.8 * screenWidth,
        openWidth: screenWidth,
        axisAlignment: -1,
        hint: 'Search recipes...',
        scrollPadding: EdgeInsets.only(top: Sizes.s16.h, bottom: Sizes.s56.h),
        transitionDuration: const Duration(milliseconds: 800),
        transitionCurve: Curves.easeInOut,
        physics: const BouncingScrollPhysics(),
        openAxisAlignment: 0.0,
        debounceDelay: const Duration(seconds: 1),
        transition: SlideFadeFloatingSearchBarTransition(),
        clearQueryOnClose: false,
        actions: [
          FloatingSearchBarAction.searchToClear(
            showIfClosed: false,
          ),
        ],
        builder: (context, transition) {
          return SearchSuggestionsList(
            controller: controller,
            suggestions: state.suggestions,
            searchQuery: state.searchQuery,
            isLoading: state.isLoadingSuggestions,
          );
        },
      ),
    );
  }
}
