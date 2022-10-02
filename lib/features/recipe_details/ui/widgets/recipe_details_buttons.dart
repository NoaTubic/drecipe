import 'package:drecipe/core/routes/app_router.dart';
import 'package:drecipe/features/common/domain/entities/instructions.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_primary_button.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:drecipe/features/common/ui/styles.dart';

class RecipeDetailsButtons extends StatefulWidget {
  const RecipeDetailsButtons({
    Key? key,
    required this.instructions,
  }) : super(key: key);

  final List<Instructions> instructions;

  @override
  State<RecipeDetailsButtons> createState() => _RecipeDetailsButtonsState();
}

class _RecipeDetailsButtonsState extends State<RecipeDetailsButtons> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
              showDrecipeSnackBar(
                  context: context,
                  text: isFavorite
                      ? 'Added to favorites.'
                      : 'Removed from favorites.');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Sizes.circularRadius),
                side: BorderSide(
                  color: Colors.grey.shade200,
                  width: Sizes.borderWidth,
                ),
              ),
            ),
            child: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border_rounded,
              color: isFavorite ? AppColors.primaryRed : AppColors.lightGrey4,
              size: Sizes.iconSize,
            ),
          ),
        ),
        const SizedBox(
          width: Sizes.s20,
        ),
        Flexible(
          flex: 3,
          child: DrecipePrimaryButton(
            text: 'Step by Step Instructions',
            onPressed: () => ScreenRouter.pushScreen(
              context,
              DetailedInstructionsScreenRoute(
                  instructions: widget.instructions),
            ),
          ),
        ),
      ],
    );
  }
}