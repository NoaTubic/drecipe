import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/fade_mask.dart';
import 'package:drecipe/features/recipe_details/domain/entities/instructions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    final ScrollController scrollController = ScrollController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        SizedBox(
          height: Sizes.s108.h,
          child: FadeMask(
            enabled: equipmentAndIngredients!.length > 3 ? true : false,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            child: ListView.separated(
              controller: scrollController,
              itemBuilder: (context, indexIngredients) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Container(
                  padding: const EdgeInsets.all(Sizes.s8),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    border: Border.all(color: AppColors.lightGrey1),
                    borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
                    boxShadow: shadowsLight,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: Sizes.s68,
                        height: Sizes.s48,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius:
                              BorderRadius.circular(Sizes.circularRadius.r),
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
              ),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: equipmentAndIngredients!.length,
              separatorBuilder: (context, index) => const SizedBox(
                width: Sizes.s16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
