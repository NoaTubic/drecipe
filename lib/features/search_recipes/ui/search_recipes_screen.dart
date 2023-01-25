import 'package:auto_route/auto_route.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_list_divider.dart';
import 'package:drecipe/features/common/ui/widgets/recipe_card.dart';
import 'package:drecipe/features/search_recipes/di/providers.dart';
import 'package:drecipe/features/search_recipes/ui/widgets/drecipe_search_bar.dart';
import 'package:drecipe/features/search_recipes/ui/widgets/search_recipes_loading_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchRecipesScreen extends ConsumerStatefulWidget {
  const SearchRecipesScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchRecipesScreen> createState() =>
      _SearchRecipesScreenState();
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
    final searchRecipesStateListener = ref.watch(searchRecipesNotifierProvider);

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
                        EdgeInsets.only(top: Sizes.s8.h, right: Sizes.s12.w),
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
                                BorderRadius.circular(Sizes.circularRadius.r);
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
                  padding: EdgeInsets.only(
                    top: Sizes.s72.h,
                  ),
                  child: searchRecipesStateListener.isLoading
                      ? const SearchRecipesLoadingBody()
                      : searchRecipesStateListener.recipes.isEmpty
                          ? Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.search_off_rounded,
                                    size: Sizes.iconSizeBig.w,
                                    color: AppColors.secondaryLightRed1,
                                  ),
                                  const Text('No results found.'),
                                  const Text(
                                      'We couldn\'t find what you searched for.'),
                                  const Text('Try again.'),
                                ],
                              ),
                            )
                          : ListView.separated(
                              itemBuilder: (context, index) {
                                return RecipeCard(
                                  recipe:
                                      searchRecipesStateListener.recipes[index],
                                  searchResults: true,
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  const DrecipeListDivider(),
                              itemCount:
                                  searchRecipesStateListener.recipes.length,
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
