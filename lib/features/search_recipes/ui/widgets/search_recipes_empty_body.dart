import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchRecipesEmptyBody extends StatelessWidget {
  const SearchRecipesEmptyBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.search_off_rounded,
            size: Sizes.iconSizeBig.w,
            color: AppColors.secondaryLightRed1,
          ),
          const Text('No results found.'),
          const Text('We couldn\'t find what you searched for.'),
          const Text('Try again.'),
        ],
      ),
    );
  }
}
