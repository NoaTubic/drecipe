import 'package:flutter/material.dart';

import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DietBadgesRow extends StatelessWidget {
  const DietBadgesRow({
    Key? key,
    required this.isVege,
    required this.isVegan,
    required this.isGlutenFree,
    this.mainAxisAlignment,
  }) : super(key: key);

  final bool isVege;
  final bool isVegan;
  final bool isGlutenFree;
  final MainAxisAlignment? mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.end,
      children: [
        if (isVege) ...[
          const DietBadge(
            text: 'Vege',
            color: Colors.green,
            icon: ImageAssets.icVege,
          ),
        ],
        if (isVegan) ...[
          SizedBox(
            width: Sizes.s6.w,
          ),
          const DietBadge(
            text: 'Vegan',
            color: Colors.green,
            icon: ImageAssets.icVegan,
          ),
        ],
        if (isGlutenFree) ...[
          SizedBox(
            width: Sizes.s6.w,
          ),
          DietBadge(
            text: 'GF',
            color: AppColors.wheat,
            icon: ImageAssets.icGlutenFree,
          ),
        ]
      ],
    );
  }
}

class DietBadge extends StatelessWidget {
  const DietBadge({
    Key? key,
    required this.color,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final Color color;
  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Sizes.s32.w,
      height: Sizes.s32.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        shape: BoxShape.circle,
        border: Border.all(color: color, width: Sizes.borderWidth),
      ),
      child: Column(
        children: [
          SizedBox(
            height: Sizes.s2.h,
          ),
          Image.asset(
            icon,
            width: Sizes.s12.w,
            color: color,
          ),
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontSize: FontSizes.s10.sp, color: color),
          ),
        ],
      ),
    );
  }
}
