import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/fade_mask.dart';
import 'package:drecipe/features/common/ui/widgets/loading_indicators/base_loading_card.dart';
import 'package:flutter/material.dart';

class RecipeDetailsBodyLoading extends StatelessWidget {
  const RecipeDetailsBodyLoading({Key? key, required this.recipeId})
      : super(key: key);

  final int recipeId;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: recipeId,
          child: const BaseLoadingCard(
              height: Sizes.s168,
              width: double.infinity,
              bottomPadding: Sizes.s0),
        ),
        const SizedBox(
          height: Sizes.s20,
        ),
        const BaseLoadingCard(height: Sizes.s28, width: double.infinity),
        const SizedBox(
          height: Sizes.s8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: Sizes.s12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              BaseLoadingCard(height: Sizes.s36, width: Sizes.s108),
              BaseLoadingCard(height: Sizes.s36, width: Sizes.s108),
              BaseLoadingCard(height: Sizes.s36, width: Sizes.s108),
            ],
          ),
        ),
        const SizedBox(
          height: Sizes.s8,
        ),
        const BaseLoadingCard(height: Sizes.s88, width: double.infinity),
        const SizedBox(
          height: Sizes.s20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            BaseLoadingCard(height: Sizes.s28, width: Sizes.s76),
            BaseLoadingCard(height: Sizes.s28, width: Sizes.s58),
            BaseLoadingCard(height: Sizes.s28, width: Sizes.s52),
          ],
        ),
        const SizedBox(
          height: Sizes.s16,
        ),
        Expanded(
          child: FadeMask(
            child: ListView.builder(
              itemBuilder: (context, index) => const BaseLoadingCard(
                height: Sizes.s60,
                width: double.infinity,
                bottomPadding: Sizes.s16,
              ),
              itemCount: 3,
            ),
          ),
        ),
        Row(
          children: const [
            Flexible(
                flex: 1,
                child: BaseLoadingCard(height: Sizes.s60, width: Sizes.s80)),
            SizedBox(
              width: Sizes.s20,
            ),
            Flexible(
                flex: 3,
                child:
                    BaseLoadingCard(height: Sizes.s60, width: double.infinity)),
          ],
        ),
        const SizedBox(
          height: Sizes.s4,
        ),
      ],
    );
  }
}
