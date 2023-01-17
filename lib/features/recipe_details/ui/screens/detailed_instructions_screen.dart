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
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                  SizedBox(
                    height: Sizes.s12.h,
                  ),
                  SizedBox(
                    width: Sizes.s180.w,
                    child: const Text(
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
                    ListView.separated(
                      itemBuilder: (context, indexStep) => Card(
                        elevation: Sizes.s0,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(Sizes.circularRadius.r)),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Sizes.bodyHorizontalPadding.w,
                                  vertical: Sizes.bodyVerticalPadding.h),
                              child: Container(
                                padding: EdgeInsets.all(Sizes.s12.w),
                                decoration: BoxDecoration(
                                  color: AppColors.lightGrey1
                                      .withOpacity(OpacityConstants.op03),
                                  borderRadius: BorderRadius.circular(
                                      Sizes.circularRadius.r),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
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
                                                    size: Sizes.s16.w,
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
                                            : SizedBox(
                                                height: Sizes.s12.h,
                                              ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Sizes.s8.h,
                                    ),
                                    Text(instructions[index]
                                        .steps[indexStep]
                                        .instruction),
                                    SizedBox(
                                      height: instructions[index]
                                              .steps[indexStep]
                                              .ingredients!
                                              .isNotEmpty
                                          ? Sizes.s20.h
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
                            Padding(
                              padding: EdgeInsets.only(
                                left: Sizes.s48.w,
                              ),
                              child: Container(
                                padding: EdgeInsets.all(Sizes.s4.w),
                                decoration: BoxDecoration(
                                    color: AppColors.secondaryLightRed1,
                                    borderRadius: BorderRadius.circular(
                                        Sizes.circularRadius.r)),
                                width: Sizes.s76.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '${instructions[index].steps[indexStep].number}. ${s.recipe_details_instructions_step}'
                                          .toUpperCase(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1!
                                          .copyWith(color: AppColors.white),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: instructions[index].steps.length,
                      separatorBuilder: (context, index) => SizedBox(
                        height: Sizes.s12.h,
                      ),
                    ),
                  ],
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: Sizes.s12.h,
                ),
                itemCount: instructions.length,
              ),
            ),
    );
  }
}
