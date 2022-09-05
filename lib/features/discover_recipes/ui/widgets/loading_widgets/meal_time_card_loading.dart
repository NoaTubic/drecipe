import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MealTimeCardLoading extends StatelessWidget {
  const MealTimeCardLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: Sizes.bodyHorizontalPadding),
      child: Container(
        height: Sizes.s54,
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(Sizes.s12),
            border: Border.all(
              width: 1,
              color: AppColors.lightGrey1.withOpacity(OpacityConstants.op05),
            ),
            boxShadow: shadows),
        child: Shimmer.fromColors(
          baseColor: AppColors.lightGrey1.withOpacity(OpacityConstants.op07),
          highlightColor:
              AppColors.lightGrey1.withOpacity(OpacityConstants.op03),
          child: Container(
            height: Sizes.s54,
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
