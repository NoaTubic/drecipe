import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/discover_recipes/di/providers.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/loading_widgets/meal_time_card_loading.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            padding: EdgeInsets.symmetric(
                horizontal: Sizes.s20.w, vertical: Sizes.s12.h),
            child: SizedBox(
              height: Sizes.s60.h,
              width: double.infinity,
              child: Card(
                color: AppColors.white,
                elevation: Sizes.s2,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color:
                        AppColors.lightGrey1.withOpacity(OpacityConstants.op05),
                  ),
                  borderRadius: BorderRadius.circular(Sizes.s12.r),
                ),
                child: InkWell(
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Sizes.s12.r),
                  ),
                  onTap: (() {}),
                  child: Padding(
                    padding: EdgeInsets.all(Sizes.s8.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          state.currentTime,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        SizedBox(
                          width: Sizes.s16.w,
                        ),
                        Image.asset(
                          state.mealTypeIcon,
                          width: Sizes.s28.w,
                        ),
                        SizedBox(
                          width: Sizes.s12.w,
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
