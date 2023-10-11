import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_button.dart';
import 'package:drecipe/features/search_recipes/domain/state/filter/filter_constants.dart';
import 'package:drecipe/features/search_recipes/domain/state/search/search_recipes_notifier.dart';
import 'package:drecipe/features/search_recipes/presentation/widgets/filter/calories_section.dart';
import 'package:drecipe/features/search_recipes/presentation/widgets/filter/filter_list.dart';
import 'package:drecipe/features/search_recipes/presentation/widgets/filter/ready_time_slider.dart';
import 'package:drecipe/features/search_recipes/presentation/widgets/filter/search_by_ingredients_section.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:drecipe/features/common/ui/styles.dart';

class FiltersSection extends ConsumerStatefulWidget {
  const FiltersSection({
    Key? key,
    this.onClose,
  }) : super(key: key);

  final void Function()? onClose;

  @override
  ConsumerState<FiltersSection> createState() => _FiltersSectionState();
}

class _FiltersSectionState extends ConsumerState<FiltersSection> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    final searchNotifier = ref.read(searchRecipesNotifierProvider.notifier);
    return Material(
      child: Container(
        color: AppColors.white,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.95,
        padding: EdgeInsets.symmetric(vertical: Sizes.s20.h),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(right: Sizes.bodyHorizontalPadding.w),
                child: GestureDetector(
                  onTap: () => widget.onClose!(),
                  child: Icon(
                    Icons.close,
                    color: AppColors.primaryRed,
                    size: Sizes.s24.w,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                S.current.filters_title,
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SearchByIngredientsSection(),
                    FilterList(
                      text: S.current.filters_cuisine,
                      items: FilterConstants.cuisines,
                    ),
                    FilterList(
                      text: S.current.filters_meal_type,
                      items: FilterConstants.mealTypes,
                    ),
                    FilterList(
                      text: S.current.filters_diets,
                      items: FilterConstants.diets,
                    ),
                    FilterList(
                      text: S.current.filters_intolerances,
                      items: FilterConstants.intolerances,
                    ),
                    const ReadyTimeSlider(),
                    const CaloriesSection(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Sizes.bodyHorizontalPadding.w,
                          vertical: Sizes.s20.h),
                      child: DrecipeButton(
                        text: S.current.filters_apply,
                        icon: const Icon(
                          Icons.search_rounded,
                        ),
                        onPressed: () {
                          searchNotifier.searchRecipes();
                          widget.onClose!();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
