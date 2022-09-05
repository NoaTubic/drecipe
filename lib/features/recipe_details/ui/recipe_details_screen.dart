import 'package:flutter/material.dart';

import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/domain/entities/recipe.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_back_button.dart';

class RecipeDetails extends StatelessWidget {
  const RecipeDetails({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(children: [
          Image.network(recipe.image ?? ''),
          Padding(
            padding: const EdgeInsets.only(top: 240),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(Sizes.s32),
                  topRight: Radius.circular(Sizes.s32),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(-Sizes.s2, Sizes.s0),
                    spreadRadius: Sizes.s6,
                    blurRadius: Sizes.s8,
                    color: AppColors.black.withOpacity(OpacityConstants.op05),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: Sizes.s20,
                  ),
                  Text(
                    recipe.title,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Sizes.bodyHorizontalPadding,
                        vertical: Sizes.s12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DrecipeChip(
                          icon: Icons.timer,
                          text: '${recipe.readyInMinutes} min',
                        ),
                        DrecipeChip(
                          icon: Icons.person,
                          text: '${recipe.servings} servings',
                        ),
                        DrecipeChip(
                          icon: Icons.person,
                          text: recipe.dishTypes[0],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const DrecipeBackButton(
            alignment: Alignment.topLeft,
          ),
        ]),
      ),
    );
  }
}

class DrecipeChip extends StatelessWidget {
  const DrecipeChip({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
              vertical: Sizes.s6, horizontal: Sizes.s12),
          decoration: BoxDecoration(
            color: AppColors.primaryRed.withOpacity(OpacityConstants.op09),
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
                text,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.white),
              )
            ],
          ),
        )
      ],
    );
  }
}
