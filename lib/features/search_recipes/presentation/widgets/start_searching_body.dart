import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartSearchingBody extends StatelessWidget {
  const StartSearchingBody({
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
            Icons.search,
            size: Sizes.iconSizeBig.w,
            color: AppColors.secondaryLightRed1,
          ),
          const Text('Start searching!'),
          const Text('Add some ingredients to your search.'),
          const Text('Or exclude some ingredients.'),
        ],
      ),
    );
  }
}
