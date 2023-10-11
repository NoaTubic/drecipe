import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';

class DrecipeCircularProgressIndicator extends StatelessWidget {
  const DrecipeCircularProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Sizes.s12),
      child: CircularProgressIndicator(
        color: AppColors.primaryRed,
        backgroundColor: AppColors.lightGrey1,
      ),
    );
  }
}
