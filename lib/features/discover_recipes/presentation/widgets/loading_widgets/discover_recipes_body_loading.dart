import 'package:drecipe/features/common/ui/sizes/sizes.dart';
import 'package:drecipe/features/common/ui/widgets/fade_mask.dart';
import 'package:drecipe/features/discover_recipes/presentation/widgets/loading_widgets/drecipe_card_swiper_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverRecipesBodyLoading extends StatelessWidget {
  const DiscoverRecipesBodyLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeMask(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrecipeCardSwiperLoading(
            height: Sizes.s146.h,
            width: Sizes.s156.w,
          ),
          const DrecipeCardSwiperLoading(),
          const DrecipeCardSwiperLoading(),
          const DrecipeCardSwiperLoading(),
        ],
      ),
    );
  }
}
