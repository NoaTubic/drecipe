import 'package:auto_route/auto_route.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/fade_mask.dart';
import 'package:drecipe/features/common/ui/widgets/loading_indicators/base_loading_card.dart';
import 'package:drecipe/features/common/ui/widgets/recipe_card.dart';
import 'package:drecipe/features/search_recipes/di/providers.dart';
import 'package:drecipe/features/search_recipes/ui/widgets/drecipe_search_bar.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    final s = S.of(context);
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
                      : ListView.separated(
                          itemBuilder: (context, index) => RecipeCard(
                            recipe: searchRecipesStateListener.recipes[index],
                          ),
                          separatorBuilder: (context, index) => Divider(
                            height: Sizes.borderWidth,
                            indent: Sizes.s100.w,
                            color: AppColors.lightGrey1,
                          ),
                          itemCount: searchRecipesStateListener.recipes.length,
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

class SearchRecipesLoadingBody extends StatelessWidget {
  const SearchRecipesLoadingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeMask(
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(
            left: Sizes.s12.w,
            right: Sizes.s12.w,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: Sizes.s12.h,
              horizontal: Sizes.s2.w,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                Sizes.circularRadius.r,
              ),
            ),
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: BaseLoadingCard(
                    height: Sizes.s80.h,
                    width: Sizes.s100.w,
                  ),
                ),
                SizedBox(
                  width: Sizes.s16.w,
                ),
                Flexible(
                  flex: 2,
                  child: Column(
                    children: [
                      SizedBox(
                        height: Sizes.s4.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BaseLoadingCard(
                            height: Sizes.s20.h,
                            width: Sizes.s100.w,
                          ),
                          BaseLoadingCard(
                            height: Sizes.s20.h,
                            width: Sizes.s32.h,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Sizes.s12.h,
                      ),
                      Row(
                        children: [
                          BaseLoadingCard(
                            height: Sizes.s16.h,
                            width: Sizes.s54.w,
                          ),
                          SizedBox(
                            width: Sizes.s8.w,
                          ),
                          BaseLoadingCard(
                            height: Sizes.s16.h,
                            width: Sizes.s68.w,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Sizes.s4.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          BaseLoadingCard(
                            height: Sizes.s16.h,
                            width: Sizes.s88.w,
                          ),
                          Row(
                            children: [
                              BaseLoadingCard(
                                height: Sizes.s32.h,
                                width: Sizes.s32.w,
                              ),
                              SizedBox(
                                width: Sizes.s6.w,
                              ),
                              BaseLoadingCard(
                                height: Sizes.s32.h,
                                width: Sizes.s32.w,
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        separatorBuilder: (context, index) => Divider(
          height: Sizes.borderWidth,
          indent: Sizes.s100.w,
          color: AppColors.lightGrey1,
        ),
        itemCount: 6,
      ),
    );
  }
}


// Filters
// kithcen type, meal type, nutrients, cooking time
