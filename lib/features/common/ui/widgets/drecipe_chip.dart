import 'package:flutter/material.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrecipeChip extends StatelessWidget {
  const DrecipeChip({
    Key? key,
    required this.icon,
    this.text,
  }) : super(key: key);

  final IconData? icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return text != null
        ? Wrap(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: Sizes.s6.h, horizontal: Sizes.s12.w),
                decoration: BoxDecoration(
                  color: AppColors.primaryRed,
                  borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
                ),
                child: Wrap(
                  children: [
                    Icon(
                      icon,
                      color: AppColors.white,
                    ),
                    SizedBox(
                      width: Sizes.s4.w,
                    ),
                    Text(
                      text!,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          )
        : Container();
  }
}
