import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:drecipe/features/common/ui/styles.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    Key? key,
    required this.text,
    required this.child,
  }) : super(key: key);

  final String text;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.bodyHorizontalPadding.w),
      child: Container(
        height: Sizes.s68.h,
        padding: EdgeInsets.symmetric(
          vertical: Sizes.s16.h,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: Sizes.s1, color: AppColors.lightGrey1),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text),
            child,
          ],
        ),
      ),
    );
  }
}
