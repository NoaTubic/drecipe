import 'package:flutter/material.dart';

import 'package:drecipe/features/common/ui/styles.dart';

class DietBadgesRow extends StatelessWidget {
  const DietBadgesRow({
    Key? key,
    required this.isVege,
    required this.isVegan,
    required this.isGlutenFree,
  }) : super(key: key);

  final bool isVege;
  final bool isVegan;
  final bool isGlutenFree;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (isVege) ...[
          const DietBadge(
            text: 'Vege',
            color: Colors.green,
            icon: ImageAssets.icVege,
          ),
          const SizedBox(
            width: Sizes.s6,
          ),
        ],
        if (isVegan) ...[
          const DietBadge(
            text: 'Vegan',
            color: Colors.green,
            icon: ImageAssets.icVegan,
          ),
          const SizedBox(
            width: Sizes.s6,
          ),
        ],
        if (isGlutenFree) ...[
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
      width: Sizes.s32,
      height: Sizes.s32,
      decoration: BoxDecoration(
        color: AppColors.white,
        shape: BoxShape.circle,
        border: Border.all(color: color, width: Sizes.borderWidth),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: Sizes.s2,
          ),
          Image.asset(
            icon,
            width: Sizes.s12,
            color: color,
          ),
          Text(text,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: FontSizes.s10, color: color)),
        ],
      ),
    );
  }
}
