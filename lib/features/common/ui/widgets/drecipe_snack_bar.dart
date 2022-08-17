import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showDrecipeSnackBar(
    {required BuildContext context,
    required String text,
    bool isError = true}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
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
    required this.isError,
  }) : super(key: key);

  final String text;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.s68,
      decoration: BoxDecoration(
          color: AppColors.primaryRed.withOpacity(OpacityConstants.op08),
          borderRadius: const BorderRadius.all(
            Radius.circular(Sizes.circularRadius),
          ),
          boxShadow: [
            BoxShadow(
                offset: const Offset(Sizes.s0, Sizes.s8),
                blurRadius: Sizes.s16,
                color: AppColors.lightGrey2),
            BoxShadow(
                offset: const Offset(Sizes.s2, Sizes.s0),
                blurRadius: Sizes.s8,
                color: AppColors.lightGrey2),
          ]),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              ImageAssets.snackBarGraphic,
            ),
          ),
          Center(
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
                const SizedBox(width: Sizes.s12),
                Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: AppColors.white, fontSize: FontSizes.s16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
