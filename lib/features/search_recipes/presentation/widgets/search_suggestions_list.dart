import 'package:cached_network_image/cached_network_image.dart';
import 'package:drecipe/features/common/ui/widgets/loading_indicators/drecipe_circular_progress_indicator.dart';
import 'package:drecipe/features/search_recipes/domain/state/search/search_recipes_notifier.dart';
import 'package:flutter/material.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/loading_indicators/base_loading_card.dart';
import 'package:drecipe/features/search_recipes/domain/entities/search_recipes_suggestion.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:material_floating_search_bar_2/material_floating_search_bar_2.dart';

class SearchSuggestionsList extends ConsumerWidget {
  const SearchSuggestionsList({
    Key? key,
    required this.suggestions,
    required this.searchQuery,
    required this.isLoading,
    required this.controller,
  }) : super(key: key);

  final FloatingSearchBarController controller;
  final List<SearchRecipesSuggestion> suggestions;
  final String searchQuery;
  final bool isLoading;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
      child: Material(
        color: Colors.white,
        elevation: Sizes.elevationMain,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isLoading) ...[
              const Center(
                child: DrecipeCircularProgressIndicator(),
              )
            ],
            suggestions.isEmpty && searchQuery.isNotEmpty
                ? Container(
                    height: Sizes.s46.h,
                    padding: EdgeInsets.all(Sizes.s12.w),
                    child: const Text(
                      'No matching results.',
                      textAlign: TextAlign.left,
                    ),
                  )
                : ListView.builder(
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        controller.query = suggestions[index].title;
                        ref
                            .read(searchRecipesNotifierProvider.notifier)
                            .autocompleteRecipeSearch(suggestions[index].title);
                        ref
                            .read(searchRecipesNotifierProvider.notifier)
                            .searchRecipes();
                        controller.close();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: Sizes.s12.w,
                          right: Sizes.s12.w,
                          top: index == 0 ? Sizes.s12.h : Sizes.s6.h,
                          bottom: index == suggestions.length - 1
                              ? Sizes.s12.h
                              : Sizes.s6.h,
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    Sizes.circularRadius.r),
                              ),
                              child: CachedNetworkImage(
                                placeholder: (context, url) => BaseLoadingCard(
                                  width: Sizes.s48.w,
                                  height: Sizes.s48.h,
                                ),
                                errorWidget: (context, url, error) => Container(
                                  color: AppColors.lightGrey1,
                                  child: const Icon(Icons.error),
                                ),
                                imageUrl: suggestions[index].image,
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  width: Sizes.s48.w,
                                  height: Sizes.s48.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(Sizes.s8.r),
                                    ),
                                    image: DecorationImage(
                                      image: imageProvider,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Sizes.s12.w,
                            ),
                            Flexible(
                              child: Text(
                                suggestions[index].title,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    itemCount: suggestions.length,
                    shrinkWrap: true,
                  ),
          ],
        ),
      ),
    );
  }
}
