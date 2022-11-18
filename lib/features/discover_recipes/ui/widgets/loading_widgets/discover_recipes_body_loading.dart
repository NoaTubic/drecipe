import 'package:drecipe/features/common/ui/widgets/fade_mask.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/loading_widgets/drecipe_card_swiper_loading.dart';
import 'package:flutter/material.dart';

class DiscoverRecipesBodyLoading extends StatelessWidget {
  const DiscoverRecipesBodyLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeMask(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          DrecipeCardSwiperLoading(),
          DrecipeCardSwiperLoading(),
          DrecipeCardSwiperLoading(),
        ],
      ),
    );
  }
}
