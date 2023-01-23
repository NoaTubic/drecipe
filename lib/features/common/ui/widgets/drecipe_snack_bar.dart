import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showDrecipeSnackBar(
    {required BuildContext context,
    required String text,
    bool isError = true}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height - Sizes.s160.h),
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
    return Container(
      height: Sizes.s52.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(Sizes.s12.r),
        ),
        border: Border.all(
            color: AppColors.secondaryLightRed2, width: Sizes.borderWidth),
        boxShadow: [
          BoxShadow(
            offset: Offset(Sizes.s0, Sizes.s4.h),
            blurRadius: Sizes.s4,
            color: AppColors.lightGrey1.withOpacity(OpacityConstants.op05),
          ),
          BoxShadow(
            offset: Offset(Sizes.s4.w, Sizes.s0),
            blurRadius: Sizes.s4,
            color: AppColors.lightGrey1.withOpacity(OpacityConstants.op05),
          ),
        ],
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isError
                ? Icon(
                    Icons.warning_amber_rounded,
                    color: AppColors.primaryRed,
                  )
                : Icon(
                    Icons.info_outline_rounded,
                    color: AppColors.darkGrey2,
                  ),
            SizedBox(width: Sizes.s12.w),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: AppColors.darkGrey2, fontSize: FontSizes.s16.sp),
            ),
          ],
        ),
      ),
    );
  }
}
