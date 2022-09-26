import 'package:drecipe/core/api/api_constants.dart';
import 'package:drecipe/features/common/domain/entities/ingredient.dart';
import 'package:drecipe/features/common/ui/widgets/loading_indicators/drecipe_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';

class IngredientCard extends StatelessWidget {
  const IngredientCard({
    Key? key,
    required this.ingredient,
  }) : super(key: key);

  final Ingredient ingredient;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.s8),
      decoration: BoxDecoration(
        color: AppColors.lightGrey1.withOpacity(OpacityConstants.op03),
        borderRadius: BorderRadius.circular(Sizes.circularRadius),
      ),
      child: Row(
        children: [
          Container(
            width: Sizes.s48,
            height: Sizes.s48,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(Sizes.circularRadius),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: Image.network(
                  '${ApiConstants.ingredientImageUrl}${ingredient.image}',
                  loadingBuilder: (context, widget, event) =>
                      const Center(child: DrecipeCircularProgressIndicator()),
                  errorBuilder: (context, e, stackTrace) =>
                      const Icon(Icons.error),
                ).image,
              ),
            ),
          ),
          const SizedBox(
            width: Sizes.s20,
          ),
          SizedBox(
            width: Sizes.s255,
            child: Text(
              ingredient.original,
              softWrap: true,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
