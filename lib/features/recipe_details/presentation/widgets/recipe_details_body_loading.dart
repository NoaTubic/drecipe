import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/fade_mask.dart';
import 'package:drecipe/features/common/ui/widgets/loading_indicators/base_loading_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecipeDetailsBodyLoading extends StatelessWidget {
  const RecipeDetailsBodyLoading({Key? key, required this.recipeId})
      : super(key: key);

  final int recipeId;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: recipeId,
          child: BaseLoadingCard(
              height:
                  MediaQuery.of(context).size.height > Sizes.smallScreenHeight
                      ? Sizes.s168.h
                      : Sizes.s188.h,
              width: double.infinity,
              bottomPadding: Sizes.s0),
        ),
        SizedBox(
          height: Sizes.s20.h,
        ),
        BaseLoadingCard(height: Sizes.s28.h, width: double.infinity),
        SizedBox(
          height: Sizes.s8.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: Sizes.s12.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BaseLoadingCard(height: Sizes.s36.h, width: Sizes.s108.w),
              BaseLoadingCard(height: Sizes.s36.h, width: Sizes.s108.w),
              BaseLoadingCard(height: Sizes.s36.h, width: Sizes.s108.w),
            ],
          ),
        ),
        SizedBox(
          height: Sizes.s8.h,
        ),
        BaseLoadingCard(height: Sizes.s88.h, width: double.infinity),
        SizedBox(
          height: Sizes.s20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BaseLoadingCard(height: Sizes.s28.h, width: Sizes.s76.w),
            BaseLoadingCard(height: Sizes.s28.h, width: Sizes.s58.w),
            BaseLoadingCard(height: Sizes.s28.h, width: Sizes.s52.w),
          ],
        ),
        SizedBox(
          height: Sizes.s16.h,
        ),
        Expanded(
          child: FadeMask(
            child: ListView.builder(
              itemBuilder: (context, index) => BaseLoadingCard(
                height: Sizes.s60.h,
                width: double.infinity,
                bottomPadding: Sizes.s16.h,
              ),
              itemCount: 3,
            ),
          ),
        ),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: BaseLoadingCard(height: Sizes.s60.h, width: Sizes.s80.w),
            ),
            SizedBox(
              width: Sizes.s20.w,
            ),
            Flexible(
                flex: 3,
                child: BaseLoadingCard(
                    height: Sizes.s60.h, width: double.infinity)),
          ],
        ),
        SizedBox(
          height: Sizes.s4.h,
        ),
      ],
    );
  }
}
