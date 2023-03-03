import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_button.dart';
import 'package:drecipe/features/search_recipes/domain/state/filter/filter_constants.dart';
import 'package:drecipe/features/search_recipes/domain/state/search/search_recipes_notifier.dart';
import 'package:drecipe/features/search_recipes/presentation/widgets/filter/calories_section.dart';
import 'package:drecipe/features/search_recipes/presentation/widgets/filter/filter_list.dart';
import 'package:drecipe/features/search_recipes/presentation/widgets/filter/ready_time_slider.dart';
import 'package:drecipe/features/search_recipes/presentation/widgets/filter/search_by_ingredients_section.dart';
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
                'Filters',
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
                    const FilterList(
                      text: 'Cuisine',
                      items: FilterConstants.cuisines,
                    ),
                    const FilterList(
                      text: 'Meal type',
                      items: FilterConstants.mealTypes,
                    ),
                    const FilterList(
                      text: 'Diet',
                      items: FilterConstants.diet,
                    ),
                    const FilterList(
                      text: 'Intolerances',
                      items: FilterConstants.intolerances,
                    ),
                    const ReadyTimeSlider(),
                    const CaloriesSection(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Sizes.bodyHorizontalPadding.w,
                          vertical: Sizes.s20.h),
                      child: DrecipeButton(
                        text: 'Apply',
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
