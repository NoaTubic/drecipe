import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/settings_button.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverRecipesHeader extends StatelessWidget {
  const DiscoverRecipesHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: Sizes.s16.h, horizontal: Sizes.bodyHorizontalPadding.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Hero(
            tag: HeroConstants.logo,
            child: Image.asset(
              ImageAssets.drecipeLogoNoText,
              width: Sizes.s52.w,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(s.discover_recipes_welcome_a),
              Text(s.discover_recipes_welcome_b),
            ],
          ),
          const SettingsButton(
            withPadding: false,
          ),
        ],
      ),
    );
  }
}
