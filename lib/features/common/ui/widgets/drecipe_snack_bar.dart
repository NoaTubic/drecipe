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
      padding: const EdgeInsets.only(bottom: Sizes.s20),
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
      height: Sizes.s68,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(Sizes.circularRadius.r),
        ),
        border:
            Border.all(color: AppColors.primaryRed, width: Sizes.borderWidth),
        boxShadow: [
          BoxShadow(
            offset: const Offset(Sizes.s0, Sizes.s4),
            blurRadius: Sizes.s4,
            color: AppColors.primaryRed.withOpacity(OpacityConstants.op05),
          ),
          BoxShadow(
            offset: const Offset(Sizes.s4, Sizes.s0),
            blurRadius: Sizes.s4,
            color: AppColors.primaryRed.withOpacity(OpacityConstants.op05),
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: Sizes.s20),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                ImageAssets.snackBarGraphic,
                color: AppColors.primaryRed,
              ),
            ),
          ),
          Center(
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
                const SizedBox(width: Sizes.s12),
                Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: AppColors.darkGrey2, fontSize: FontSizes.s16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
