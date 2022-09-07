import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/settings_button.dart';
import 'package:flutter/material.dart';

class DiscoverRecipesHeader extends StatelessWidget {
  const DiscoverRecipesHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            children: const [
              Text('Hello, chef!'),
              Text('What are we cooking today?'),
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
