import 'package:drecipe/core/api/api_constants.dart';
import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_app_bar.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_scaffold.dart';
import 'package:drecipe/features/common/ui/widgets/fade_mask.dart';
import 'package:drecipe/features/recipe_details/domain/entities/instructions.dart';
import 'package:drecipe/features/recipe_details/ui/widgets/instructions_horizontal_slider.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';

class DetailedInstructionsScreen extends StatelessWidget {
  const DetailedInstructionsScreen({
    Key? key,
    required this.instructions,
  }) : super(key: key);

  final List<Instructions> instructions;

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    final s = S.of(context);
    return DrecipeScaffold(
      padding: EdgeInsets.zero,
      appBar: DrecipeAppBar(
        title: s.recipe_details_instructions_title,
      ),
      //INSTRUCTIONS
      body: instructions.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.info_rounded,
                    color: AppColors.primaryRed,
                  ),
                  const SizedBox(
                    height: Sizes.s12,
                  ),
                  const SizedBox(
                    width: Sizes.s180,
                    child: Text(
                      'No instructions for this recipe at this moment. :(',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            )
          : FadeMask(
              scrollController: scrollController,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                controller: scrollController,
                itemBuilder: (context, index) => Column(
                  children: [
                    Text(instructions[index].name ?? ''),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Sizes.bodyHorizontalPadding,
                          vertical: Sizes.bodyVerticalPadding),
                      child: ListView.separated(
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
                              borderRadius:
                                  BorderRadius.circular(Sizes.circularRadius),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${instructions[index].steps[indexStep].number}. ${s.recipe_details_instructions_step}'
                                          .toUpperCase(),
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                    instructions[index]
                                                .steps[indexStep]
                                                .stepDuration !=
                                            null
                                        ? Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
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
                                                instructions[index]
                                                    .steps[indexStep]
                                                    .stepDuration!,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1,
                                              ),
                                            ],
                                          )
                                        : Container(),
                                  ],
                                ),
                                Text(instructions[index]
                                    .steps[indexStep]
                                    .instruction),
                                SizedBox(
                                  height: instructions[index]
                                          .steps[indexStep]
                                          .ingredients!
                                          .isNotEmpty
                                      ? Sizes.s20
                                      : Sizes.s0,
                                ),
                                instructions[index]
                                        .steps[indexStep]
                                        .ingredients!
                                        .isNotEmpty
                                    ? InstructionsHorizontalSlider(
                                        equipmentAndIngredients:
                                            instructions[index]
                                                .steps[indexStep]
                                                .ingredients,
                                        urlPrefix:
                                            ApiConstants.ingredientImageUrl,
                                        title: s
                                            .recipe_details_instructions_ingredients,
                                      )
                                    : Container(),
                                instructions[index]
                                        .steps[indexStep]
                                        .equipment!
                                        .isNotEmpty
                                    ? InstructionsHorizontalSlider(
                                        equipmentAndIngredients:
                                            instructions[index]
                                                .steps[indexStep]
                                                .equipment,
                                        urlPrefix:
                                            ApiConstants.equipmentImageUrl,
                                        title: s
                                            .recipe_details_instructions_equipment,
                                      )
                                    : Container(),
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
                    ),
                  ],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: Sizes.s12,
                ),
                itemCount: instructions.length,
              ),
            ),
    );
  }
}
