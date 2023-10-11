import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class BaseLoadingCard extends StatelessWidget {
  const BaseLoadingCard({
    Key? key,
    this.circularBorders = true,
    required this.height,
    required this.width,
    this.bottomPadding = 0,
  }) : super(key: key);

  final double height;
  final double width;
  final bool circularBorders;
  final double bottomPadding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
          color: AppColors.white,
        ),
        child: Shimmer.fromColors(
          baseColor: AppColors.lightGrey1.withOpacity(OpacityConstants.op07),
          highlightColor:
              AppColors.lightGrey1.withOpacity(OpacityConstants.op03),
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  circularBorders ? Sizes.circularRadius.r : Sizes.s0),
              color: AppColors.lightGrey1,
            ),
          ),
        ),
      ),
    );
  }
}
