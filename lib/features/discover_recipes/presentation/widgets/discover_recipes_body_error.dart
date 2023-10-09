import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverRecipesBodyError extends StatelessWidget {
  const DiscoverRecipesBodyError({
    Key? key,
    required this.error,
  }) : super(key: key);

  final String error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: Sizes.s160.h,
          ),
          Icon(
            Icons.error_rounded,
            size: Sizes.s80.w,
            color: AppColors.error,
          ),
          SizedBox(
            height: Sizes.s12.h,
          ),
          Text(
            'Whoops! $error 😔',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          Text(
            S.of(context).label_try_again,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ],
      ),
    );
  }
}
