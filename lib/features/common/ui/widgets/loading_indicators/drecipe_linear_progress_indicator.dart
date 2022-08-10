import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';

class DrecipeLinearProgressIndicator extends StatelessWidget {
  const DrecipeLinearProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Sizes.s12),
      child: LinearProgressIndicator(
        color: AppColors.primaryRed,
        backgroundColor: AppColors.lightGrey1,
      ),
    );
  }
}
