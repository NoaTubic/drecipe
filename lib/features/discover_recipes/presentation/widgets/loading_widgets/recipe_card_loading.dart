import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/loading_indicators/base_loading_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecipeCardLoading extends StatelessWidget {
  const RecipeCardLoading({
    Key? key,
    this.height,
    this.width,
  }) : super(key: key);

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BaseLoadingCard(
          height: height ??
              (MediaQuery.of(context).size.height > Sizes.smallScreenHeight
                  ? Sizes.s160.h
                  : Sizes.s180.h),
          width: width ?? Sizes.s260.w,
        ),
      ],
    );
  }
}
