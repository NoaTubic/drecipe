import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:drecipe/features/common/ui/styles.dart';

class DrecipeDialog extends StatelessWidget {
  const DrecipeDialog({
    super.key,
    required this.child,
    required this.insetPadding,
  });

  final Widget child;
  final EdgeInsets insetPadding;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: Sizes.elevationMain,
      insetPadding: insetPadding,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Sizes.s12.h),
        child: child,
      ),
    );
  }
}
