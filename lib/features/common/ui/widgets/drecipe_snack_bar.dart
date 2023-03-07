import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showDrecipeSnackBar(
    {required BuildContext context,
    required String text,
    bool isError = true}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.fixed,
      backgroundColor: AppColors.primaryRed,
      padding: EdgeInsets.only(top: Sizes.s16.h),
      elevation: Sizes.s0,
      content: DrecipeSnackBar(
        text: text,
        isError: isError,
      ),
    ),
  );
}

class DrecipeSnackBar extends StatelessWidget {
  const DrecipeSnackBar({
    Key? key,
    required this.text,
    this.isError = false,
  }) : super(key: key);

  final String text;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Sizes.s12.h),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isError
                ? Icon(
                    Icons.warning_amber_rounded,
                    color: AppColors.white,
                  )
                : Icon(
                    Icons.info_outline_rounded,
                    color: AppColors.white,
                  ),
            SizedBox(width: Sizes.s12.w),
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.white, fontSize: FontSizes.s16.sp),
            ),
          ],
        ),
      ),
    );
  }
}
