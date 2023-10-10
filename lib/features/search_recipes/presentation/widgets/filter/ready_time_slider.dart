import 'package:drecipe/features/search_recipes/domain/state/filter/filter_recipes_notifier.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:drecipe/features/common/ui/styles.dart';

class ReadyTimeSlider extends ConsumerStatefulWidget {
  const ReadyTimeSlider({super.key});

  @override
  ConsumerState<ReadyTimeSlider> createState() => _ReadyTimeSliderState();
}

class _ReadyTimeSliderState extends ConsumerState<ReadyTimeSlider> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(filterRecipesNotifierProvider);
    final filterNotifier = ref.read(filterRecipesNotifierProvider.notifier);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: Sizes.s8.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Sizes.bodyHorizontalPadding.w,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: Sizes.s4.h),
                  child: Icon(
                    Icons.timer,
                    color: AppColors.primaryRed,
                  ),
                ),
                Text(
                  S.current.filters_max_ready_time,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const Spacer(),
                Text('${state.maxReadyTime} ${S.current.filters_minutes}')
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: Sizes.s12.w,
              top: Sizes.s8.h,
            ),
            child: SliderTheme(
              data: SliderThemeData(
                trackHeight: Sizes.s16.h,
                thumbShape:
                    RoundSliderThumbShape(enabledThumbRadius: Sizes.s12.r),
                inactiveTickMarkColor: AppColors.secondaryLightRed4,
                activeTickMarkColor: AppColors.primaryRed,
              ),
              child: Slider(
                label: '${state.maxReadyTime} ${S.current.filters_minutes}',
                value: double.parse(state.maxReadyTime ?? '0'),
                onChanged: (newValue) => filterNotifier
                    .onMaxReadyTimeChanged(newValue.round().toString()),
                min: 0,
                max: 180,
                divisions: 36,
                activeColor: AppColors.primaryRed,
                inactiveColor: AppColors.lightGrey1,
                thumbColor: AppColors.lightGrey1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
