import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/fade_mask.dart';
import 'package:drecipe/features/common/ui/widgets/loading_indicators/base_loading_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchRecipesLoadingBody extends StatelessWidget {
  const SearchRecipesLoadingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeMask(
      child: ListView.separated(
        shrinkWrap: true,
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
