import 'package:flutter/material.dart';
import 'package:drecipe/features/common/ui/styles.dart';

class DrecipeChip extends StatelessWidget {
  const DrecipeChip({
    Key? key,
    required this.icon,
    this.text,
  }) : super(key: key);

  final IconData? icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return text != null
        ? Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    vertical: Sizes.s6, horizontal: Sizes.s12),
                decoration: BoxDecoration(
                  color: AppColors.primaryRed,
                  borderRadius: BorderRadius.circular(Sizes.circularRadius),
                ),
                child: Row(
                  children: [
                    Icon(
                      icon,
                      color: AppColors.white,
                    ),
                    const SizedBox(
                      width: Sizes.s4,
                    ),
                    Text(
                      text!,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          )
        : Container();
  }
}
