import 'package:auto_route/auto_route.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/search_recipes/domain/state/search/search_recipes_notifier.dart';
import 'package:drecipe/features/search_recipes/presentation/widgets/drecipe_search_bar.dart';
import 'package:drecipe/features/search_recipes/presentation/widgets/filter/filters_section.dart';
import 'package:drecipe/features/search_recipes/presentation/widgets/search_recipes_body.dart';
import 'package:drecipe/features/search_recipes/presentation/widgets/search_recipes_empty_body.dart';
import 'package:drecipe/features/search_recipes/presentation/widgets/search_recipes_loading_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchRecipesPage extends ConsumerStatefulWidget {
  const SearchRecipesPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchRecipesPage> createState() => _SearchRecipesPageState();
}

class _SearchRecipesPageState extends ConsumerState<SearchRecipesPage>
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
                              child: FiltersSection(
                                onClose: () {
                                  animationController.reverse();
                                  setState(
                                    () {
                                      _borderRadius =
                                          BorderRadius.circular(Sizes.s0);
                                    },
                                  );
                                  AutoRouter.of(context).pop();
                                },
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
                          ? searchRecipesStateListener.searchQuery.isEmpty
                              ? const Center(
                                  child: Icon(Icons.search_off_rounded),
                                )
                              : const SearchRecipesEmptyBody()
                          : const SearchRecipesBody(),
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
