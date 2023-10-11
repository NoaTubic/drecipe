import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/search_recipes/domain/state/filter/filter_constants.dart';
import 'package:drecipe/features/search_recipes/domain/state/search/search_recipes_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/cli_commands.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SortingDirection extends ConsumerWidget {
  const SortingDirection({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchRecipesNotifierProvider);
    final searchNotifier = ref.read(searchRecipesNotifierProvider.notifier);
    return Material(
      borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
      child: InkWell(
        onTap: () async {
          searchNotifier.changeSortDirection();
        },
        borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
        child: Container(
          height: Sizes.s40.h,
          width: Sizes.s255.w,
          decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(color: AppColors.lightGrey1),
            borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: Sizes.s4.w,
              ),
              Text(state.sortDirection.capitalize()),
              Icon(
                state.sortDirection == FilterConstants.sortAsc
                    ? Icons.expand_less_rounded
                    : Icons.expand_more_rounded,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
