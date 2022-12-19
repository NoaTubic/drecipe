import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/diet_badge.dart';
import 'package:drecipe/features/search_recipes/di/providers.dart';
import 'package:drecipe/features/search_recipes/ui/widgets/search_suggestions_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class SearchRecipesScreen extends ConsumerStatefulWidget {
  const SearchRecipesScreen({Key? key}) : super(key: key);

  @override
  _SearchRecipesScreenState createState() => _SearchRecipesScreenState();
}

class _SearchRecipesScreenState extends ConsumerState<SearchRecipesScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(Sizes.s0);

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    animation = Tween<double>(begin: 1, end: 0.93).animate(animationController);

    // animation.addStatusListener(
    //   (status) {
    //     if (status == AnimationStatus.forward) {
    //       animationController.reverse();
    //     }
    //   },
    // );
  }

  @override
  dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: ScaleTransition(
        scale: animation,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: _borderRadius,
          ),
          child: SafeArea(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: Sizes.s8, right: Sizes.s12),
                    child: IconButton(
                      onPressed: () async {
                        showCupertinoModalPopup(
                          context: context,
                          builder: (_) {
                            return CupertinoPopupSurface(
                              child: Container(
                                color: AppColors.white,
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.95,
                                child: CupertinoButton(
                                  child: const Text('x'),
                                  onPressed: () {
                                    animationController.reverse();
                                    setState(() {
                                      _borderRadius =
                                          BorderRadius.circular(Sizes.s0);
                                    });
                                    AutoRouter.of(context).pop();
                                  },
                                ),
                              ),
                            );
                          },
                        );
                        animationController.forward();
                        setState(
                          () {
                            _borderRadius =
                                BorderRadius.circular(Sizes.circularRadius);
                          },
                        );
                      },
                      icon: const Icon(Icons.filter_list_rounded,
                          size: Sizes.iconSizeMedium),
                      color: AppColors.black.withOpacity(OpacityConstants.op04),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 72,
                    left: Sizes.bodyHorizontalPadding,
                    right: Sizes.bodyHorizontalPadding,
                  ),
                  child: ListView.separated(
                    itemBuilder: (context, index) => Container(
                      height: 240,
                      width: 380,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Sizes.circularRadius),
                        // boxShadow: shadowsLight,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CachedNetworkImage(
                            width: 120,
                            height: 100,
                            fit: BoxFit.fitHeight,
                            imageUrl: ref
                                .watch(searchRecipesNotifierProvider)
                                .recipes[index]
                                .image!,
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Sizes.circularRadius),
                                gradient: recipeCardGradient(),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  // colorFilter: ColorFilter.mode(
                                  //   Colors.black
                                  //       .withOpacity(OpacityConstants.op03),
                                  //   BlendMode.darken,
                                  // ),
                                  image: imageProvider,
                                ),
                              ),
                              child: InkWell(
                                onTap: () {},
                                child: Column(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(Sizes.s12),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: DietBadgesRow(
                                        isVege: ref
                                            .watch(
                                                searchRecipesNotifierProvider)
                                            .recipes[index]
                                            .vegan,
                                        isVegan: ref
                                            .watch(
                                                searchRecipesNotifierProvider)
                                            .recipes[index]
                                            .vegetarian,
                                        isGlutenFree: ref
                                            .watch(
                                                searchRecipesNotifierProvider)
                                            .recipes[index]
                                            .glutenFree,
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: Sizes.s8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                ref
                                    .watch(searchRecipesNotifierProvider)
                                    .recipes[index]
                                    .title,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2!
                                    .copyWith(color: AppColors.black),
                              ),
                              Text(
                                ref
                                    .watch(searchRecipesNotifierProvider)
                                    .recipes[index]
                                    .readyInMinutes
                                    .toString(),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: Sizes.s16),
                    itemCount:
                        ref.watch(searchRecipesNotifierProvider).recipes.length,
                  ),
                ),
                const DrecipeSearchBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DrecipeSearchBar extends ConsumerWidget {
  const DrecipeSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = FloatingSearchBarController();
    final double screenWidth = MediaQuery.of(context).size.width;
    final searchRecipesNotifier =
        ref.read(searchRecipesNotifierProvider.notifier);
    return Padding(
      padding: const EdgeInsets.only(top: Sizes.s4),
      child: FloatingSearchBar(
        controller: controller,
        onQueryChanged: (query) =>
            searchRecipesNotifier.autocompleteRecipeSearch(query),
        onSubmitted: (query) => searchRecipesNotifier.searchRecipes(query),
        elevation: Sizes.s0,
        borderRadius: BorderRadius.circular(Sizes.circularRadius),
        border: BorderSide(
          color: AppColors.black.withOpacity(OpacityConstants.op02),
          width: Sizes.borderWidth,
        ),
        width: 0.8 * screenWidth,
        openWidth: screenWidth,
        axisAlignment: -1,
        hint: 'Search recipes...',
        scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
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
            suggestions: ref.watch(searchRecipesNotifierProvider).suggestions,
            searchQuery: ref.watch(searchRecipesNotifierProvider).searchQuery,
            isLoading:
                ref.watch(searchRecipesNotifierProvider).isLoadingSuggestions,
          );
        },
      ),
    );
  }
}

// Filters
// kithcen type, meal type, nutrients, cooking time
