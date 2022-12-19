import 'package:cached_network_image/cached_network_image.dart';
import 'package:drecipe/features/common/ui/widgets/loading_indicators/drecipe_circular_progress_indicator.dart';
import 'package:drecipe/features/search_recipes/di/providers.dart';
import 'package:flutter/material.dart';

import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/loading_indicators/base_loading_card.dart';
import 'package:drecipe/features/search_recipes/domain/search_recipes_suggestion.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

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
      borderRadius: BorderRadius.circular(8),
      child: Material(
        color: Colors.white,
        elevation: Sizes.elevationMain,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isLoading) ...[
              const Center(child: DrecipeCircularProgressIndicator())
            ],
            suggestions.isEmpty && searchQuery.isNotEmpty
                ? Container(
                    height: Sizes.s46,
                    padding: const EdgeInsets.all(Sizes.s12),
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
                            .searchRecipes(suggestions[index].title);
                        controller.close();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: Sizes.s12,
                          right: Sizes.s12,
                          top: index == 0 ? Sizes.s12 : Sizes.s6,
                          bottom: index == suggestions.length - 1
                              ? Sizes.s12
                              : Sizes.s6,
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Sizes.s20),
                                boxShadow: shadowsLight,
                              ),
                              child: CachedNetworkImage(
                                placeholder: (context, url) =>
                                    const BaseLoadingCard(
                                  width: Sizes.s48,
                                  height: Sizes.s48,
                                ),
                                errorWidget: (context, url, error) => Container(
                                  color: AppColors.lightGrey1,
                                  child: const Icon(Icons.error),
                                ),
                                imageUrl: suggestions[index].image,
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  width: Sizes.s48,
                                  height: Sizes.s48,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(Sizes.s8)),
                                    image: DecorationImage(
                                      image: imageProvider,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: Sizes.s12,
                            ),
                            Text(suggestions[index].title),
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
