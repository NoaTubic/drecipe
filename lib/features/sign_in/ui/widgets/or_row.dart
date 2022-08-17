import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/generated/l10n.dart';
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
            indent: Sizes.s4,
            endIndent: Sizes.s12,
            thickness: Sizes.s08,
            height: Sizes.s2,
            color: AppColors.lightGrey1,
          ),
        ),
        Text(S.of(context).label_or.toUpperCase()),
        Expanded(
          child: Divider(
            indent: Sizes.s12,
            endIndent: Sizes.s4,
            thickness: Sizes.s08,
            height: Sizes.s2,
            color: AppColors.lightGrey1,
          ),
        ),
      ],
    );
  }
}
