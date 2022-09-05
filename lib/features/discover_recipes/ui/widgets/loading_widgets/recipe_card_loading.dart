import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class RecipeCardLoading extends StatelessWidget {
  const RecipeCardLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.circularRadius),
            color: Colors.white,
            boxShadow: shadowsLight,
          ),
          child: Shimmer.fromColors(
            baseColor: AppColors.lightGrey1.withOpacity(OpacityConstants.op07),
            highlightColor:
                AppColors.lightGrey1.withOpacity(OpacityConstants.op03),
            child: Container(
              height: Sizes.s160,
              width: Sizes.s260,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.circularRadius),
                color: AppColors.lightGrey1,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: Sizes.s8,
        )
      ],
    );
  }
}
