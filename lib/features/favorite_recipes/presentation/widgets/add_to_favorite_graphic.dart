import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddToFavoritesGraphic extends StatelessWidget {
  const AddToFavoritesGraphic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.favorite_rounded,
          size: Sizes.iconSize.w,
          color: AppColors.lightGrey1,
        ),
        SizedBox(
          width: Sizes.s4.w,
        ),
        Icon(
          Icons.arrow_forward_rounded,
          size: Sizes.iconSizeSmall.w,
        ),
        SizedBox(
          width: Sizes.s4.w,
        ),
        Icon(
          Icons.favorite_rounded,
          size: Sizes.iconSize.w,
          color: AppColors.primaryRed,
        ),
      ],
    );
  }
}
