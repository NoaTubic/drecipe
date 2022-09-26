import 'package:flutter/material.dart';

import 'package:drecipe/features/common/ui/styles.dart';

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
          const SizedBox(
            height: Sizes.s160,
          ),
          Icon(
            Icons.error,
            size: Sizes.s80,
            color: AppColors.error,
          ),
          const SizedBox(
            height: Sizes.s12,
          ),
          Text(
            'Ops! $error 😔',
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            'Please try again later.',
            style: Theme.of(context).textTheme.headline3,
          ),
        ],
      ),
    );
  }
}
