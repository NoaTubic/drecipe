import 'package:drecipe/core/api/api_constants.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/domain/entities/instructions.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_app_bar.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_scaffold.dart';
import 'package:flutter/material.dart';

class DetailedInstructionsScreen extends StatelessWidget {
  const DetailedInstructionsScreen({
    Key? key,
    required this.instructions,
  }) : super(key: key);

  final List<Instructions> instructions;

  @override
  Widget build(BuildContext context) {
    print(
        '${ApiConstants.ingredientImageUrl}${instructions[0].steps[0].ingredients![0].image}');
    return DrecipeScaffold(
      appBar: const DrecipeAppBar(
        title: 'Instructions',
      ),
      //INSTRUCTIONS
      body: ListView.separated(
        itemBuilder: (context, index) => Container(
          child: Column(
            children: [
              Text(instructions[index].name ?? 'asasdasd'),
              ListView.separated(
                itemBuilder: (context, indexStep) => Card(
                  elevation: Sizes.elevationMain,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(Sizes.circularRadius)),
                  child: Container(
                    padding: const EdgeInsets.all(Sizes.s12),
                    decoration: BoxDecoration(
                      color: AppColors.lightGrey1
                          .withOpacity(OpacityConstants.op03),
                      borderRadius: BorderRadius.circular(Sizes.circularRadius),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${instructions[index].steps[indexStep].number}. step'
                                  .toUpperCase(),
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.access_time_rounded,
                                  size: Sizes.s16,
                                  color: AppColors.black,
                                ),
                                const SizedBox(
                                  width: Sizes.s4,
                                ),
                                Text(
                                  '${instructions[index].steps[indexStep].stepDuration}',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: Sizes.s4,
                        ),
                        Text(instructions[index].steps[indexStep].instruction),
                        const SizedBox(
                          height: Sizes.s20,
                        ),
                        Text(
                          'Ingredients',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        const SizedBox(
                          height: Sizes.s4,
                        ),
                        InstructionsHorizontalSlider(
                          equipmentAndIngredients:
                              instructions[index].steps[indexStep].ingredients,
                          urlPrefix: ApiConstants.ingredientImageUrl,
                        ),
                        const SizedBox(
                          height: Sizes.s20,
                        ),
                        Text(
                          'Equipment',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        const SizedBox(
                          height: Sizes.s4,
                        ),
                        InstructionsHorizontalSlider(
                          equipmentAndIngredients:
                              instructions[index].steps[indexStep].equipment,
                          urlPrefix: ApiConstants.equipmentImageUrl,
                        ),
                      ],
                    ),
                  ),
                ),
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: instructions[index].steps.length,
                separatorBuilder: (context, index) => const SizedBox(
                  height: Sizes.s12,
                ),
              ),
            ],
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: Sizes.s12,
        ),
        itemCount: instructions.length,
      ),
    );
  }
}

class InstructionsHorizontalSlider extends StatelessWidget {
  const InstructionsHorizontalSlider(
      {Key? key,
      required this.equipmentAndIngredients,
      required this.urlPrefix})
      : super(key: key);

  final List<EquipmentAndIngredients>? equipmentAndIngredients;
  final String urlPrefix;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
