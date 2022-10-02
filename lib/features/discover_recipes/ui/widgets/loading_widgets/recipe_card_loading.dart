import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/loading_indicators/base_loading_card.dart';
import 'package:flutter/material.dart';

class RecipeCardLoading extends StatelessWidget {
  const RecipeCardLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        BaseLoadingCard(
          height: Sizes.s160,
          width: Sizes.s260,
          bottomPadding: Sizes.s8,
        ),
      ],
    );
  }
}
