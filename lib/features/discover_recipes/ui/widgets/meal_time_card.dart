import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/discover_recipes/di/providers.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/loading_widgets/meal_time_card_loading.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MealTimeCard extends ConsumerWidget {
  const MealTimeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(mealTimeNotifierProvider);
    final s = S.of(context);
    return state.isLoading
        ? const MealTimeCardLoading()
        : Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Sizes.s20, vertical: Sizes.s12),
            child: Container(
              height: Sizes.s60,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: shadows,
              ),
              child: Card(
                elevation: Sizes.s0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color:
                        AppColors.lightGrey1.withOpacity(OpacityConstants.op05),
                  ),
                  borderRadius: BorderRadius.circular(Sizes.s12),
                ),
                child: InkWell(
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Sizes.s12),
                  ),
                  onTap: (() {}),
                  child: Padding(
                    padding: const EdgeInsets.all(Sizes.s8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          state.currentTime,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(
                          width: Sizes.s16,
                        ),
                        Image.asset(
                          state.mealTypeIcon,
                          width: Sizes.s28,
                        ),
                        const SizedBox(
                          width: Sizes.s12,
                        ),
                        Text(
                          '${s.discover_recipes_meal_card_time_a} ${state.mealType} ${s.discover_recipes_meal_card_time_b}',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: AppColors.secondaryLightRed1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
