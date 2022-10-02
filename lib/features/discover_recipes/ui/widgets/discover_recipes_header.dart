import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/settings_button.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';

class DiscoverRecipesHeader extends StatelessWidget {
  const DiscoverRecipesHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: Sizes.s16, horizontal: Sizes.bodyHorizontalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Hero(
            tag: HeroConstants.logo,
            child: Image.asset(
              ImageAssets.drecipeLogoNoText,
              width: Sizes.s52,
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
