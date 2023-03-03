import 'package:drecipe/features/common/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeartIcon extends StatelessWidget {
  const HeartIcon({
    Key? key,
    required this.isFavorite,
  }) : super(key: key);

  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: AnimatedCrossFade(
        firstChild: Icon(
          Icons.favorite_rounded,
          color: AppColors.lightGrey4,
          size: Sizes.iconSize.w,
        ),
        secondChild: Icon(
          Icons.favorite_rounded,
          color: AppColors.primaryRed,
          size: Sizes.iconSize.w,
        ),
        crossFadeState:
            isFavorite ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: const Duration(
          seconds: DurationConstants.d1,
        ),
      ),
    );
  }
}
