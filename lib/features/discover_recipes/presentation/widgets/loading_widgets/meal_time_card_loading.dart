import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class MealTimeCardLoading extends StatelessWidget {
  const MealTimeCardLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Sizes.bodyHorizontalPadding.w, vertical: Sizes.s16.h),
      child: Container(
        height: Sizes.s52.h,
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(Sizes.s12),
            border: Border.all(
              width: Sizes.s1,
              color: AppColors.lightGrey1.withOpacity(OpacityConstants.op05),
            ),
            boxShadow: shadows),
        child: Shimmer.fromColors(
          baseColor: AppColors.lightGrey1.withOpacity(OpacityConstants.op07),
          highlightColor:
              AppColors.lightGrey1.withOpacity(OpacityConstants.op03),
          child: Container(
            height: Sizes.s52.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.s12),
              color: AppColors.lightGrey1,
            ),
          ),
        ),
      ),
    );
  }
}
