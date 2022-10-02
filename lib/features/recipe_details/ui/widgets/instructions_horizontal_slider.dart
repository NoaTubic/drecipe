import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/domain/entities/instructions.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';

class InstructionsHorizontalSlider extends StatelessWidget {
  const InstructionsHorizontalSlider({
    Key? key,
    required this.equipmentAndIngredients,
    required this.urlPrefix,
    required this.title,
  }) : super(key: key);

  final List<EquipmentAndIngredients>? equipmentAndIngredients;
  final String urlPrefix;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const SizedBox(
          height: Sizes.s4,
        ),
        SizedBox(
          height: 90,
          child: ListView.separated(
            itemBuilder: (context, indexIngredients) => Container(
              padding: const EdgeInsets.all(Sizes.s8),
              decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(color: AppColors.lightGrey1),
                borderRadius: BorderRadius.circular(Sizes.circularRadius),
                boxShadow: shadowsLight,
              ),
              child: Column(
                children: [
                  Container(
                    width: Sizes.s68,
                    height: Sizes.s48,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(Sizes.circularRadius),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            '$urlPrefix${equipmentAndIngredients![indexIngredients].image}'),
                      ),
                    ),
                  ),
                  const SizedBox(height: Sizes.s2),
                  Text(equipmentAndIngredients![indexIngredients].name)
                ],
              ),
            ),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemCount: equipmentAndIngredients!.length,
            separatorBuilder: (context, index) => const SizedBox(
              width: Sizes.s16,
            ),
          ),
        ),
      ],
    );
  }
}
