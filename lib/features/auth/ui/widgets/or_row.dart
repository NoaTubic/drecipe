import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';

class OrRow extends StatelessWidget {
  const OrRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            indent: 4,
            endIndent: 12,
            thickness: 0.8,
            height: 2,
            color: AppColors.lightGrey1,
          ),
        ),
        const Text('OR'),
        Expanded(
          child: Divider(
            indent: 12,
            endIndent: 4,
            thickness: 0.8,
            height: 2,
            color: AppColors.lightGrey1,
          ),
        ),
      ],
    );
  }
}
