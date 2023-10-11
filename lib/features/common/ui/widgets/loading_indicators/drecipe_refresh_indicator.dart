import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';

class DrecipeRefreshIndicator extends StatelessWidget {
  const DrecipeRefreshIndicator({
    Key? key,
    required this.child,
    required this.onRefresh,
  }) : super(key: key);

  final Widget child;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      color: AppColors.secondaryLightRed1,
      strokeWidth: Sizes.borderWidth,
      backgroundColor: AppColors.white,
      child: child,
    );
  }
}
