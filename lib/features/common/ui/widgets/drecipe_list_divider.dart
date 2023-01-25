import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrecipeListDivider extends StatelessWidget {
  const DrecipeListDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: Sizes.borderWidth,
      indent: Sizes.s100.w,
      color: AppColors.lightGrey1,
    );
  }
}
