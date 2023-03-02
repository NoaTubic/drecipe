import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/loading_indicators/drecipe_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrecipeButton extends ConsumerWidget {
  const DrecipeButton(
      {Key? key,
      this.onPressed,
      required this.text,
      this.icon,
      this.isEnabled = true,
      this.isLoading = false,
      this.secondary = false})
      : super(key: key);

  final void Function()? onPressed;
  final String text;
  final Icon? icon;
  final bool isEnabled;
  final bool isLoading;
  final bool secondary;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isEnabled
            ? isLoading
                ? () {}
                : onPressed
            : null,
        style: isEnabled
            ? secondary
                ? ElevatedButton.styleFrom(
                    backgroundColor: AppColors.white,
                    foregroundColor: AppColors.primaryRed,
                    side: BorderSide(color: AppColors.primaryRed),
                  )
                : null
            : ElevatedButton.styleFrom(
                backgroundColor: AppColors.lightGrey1,
                side: BorderSide(color: AppColors.lightGrey2),
              ),
        child: isLoading
            ? const DrecipeCircularProgressIndicator()
            : icon != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      icon!,
                      SizedBox(width: Sizes.s4.w),
                      Text(text),
                    ],
                  )
                : Text(text),
      ),
    );
  }
}
