import 'package:drecipe/features/common/ui/sizes/sizes.dart';
import 'package:drecipe/features/discover_recipes/presentation/widgets/drecipe_card_swiper.dart';
import 'package:drecipe/features/search_recipes/presentation/widgets/filter/drecipe_filter_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterList extends StatelessWidget {
  const FilterList({
    Key? key,
    required this.items,
    required this.text,
  }) : super(key: key);

  final List<String> items;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Sizes.s8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: Sizes.bodyHorizontalPadding.w),
            child: Text(
              text,
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          DrecipeCarousel(
            items: items,
            builder: (context, index) => DrecipeFilterChip(
              text: index.toString(),
              filter: text,
            ),
            height: Sizes.s48.h,
            itemCount: items.length,
            separatorWidth: Sizes.s12.w,
          ),
        ],
      ),
    );
  }
}
