import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';

class DrecipeLinearProgressIndicator extends StatelessWidget {
  const DrecipeLinearProgressIndicator({Key? key, this.padding = Sizes.s0})
      : super(key: key);

  final double padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Sizes.s12),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: padding),
        child: LinearProgressIndicator(
          color: AppColors.primaryRed,
          backgroundColor: AppColors.lightGrey1,
        ),
      ),
    );
  }
}
