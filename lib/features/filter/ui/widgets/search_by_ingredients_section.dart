import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_button.dart';
import 'package:drecipe/features/discover_recipes/ui/widgets/drecipe_card_swiper.dart';
import 'package:drecipe/features/search_recipes/di/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:drecipe/features/common/ui/styles.dart';

class SearchByIngredientsSection extends ConsumerWidget {
  const SearchByIngredientsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filterNotifier = ref.read(filterRecipesNotifierProvider.notifier);
    final state = ref.watch(filterRecipesNotifierProvider);

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Sizes.bodyHorizontalPadding.w, vertical: Sizes.s12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchByIngredientsRow(
            text: 'Include ingredients',
            icon: Icons.add_box_rounded,
            hint: 'Ingredients you have',
            ingredients: state.includeIngredients,
            onChanged: (ingredient) =>
                filterNotifier.onIngredientToIncludeChanged(ingredient),
            onPressed: () =>
                filterNotifier.addIncludedIngredient(state.ingredientToInclude),
          ),
          SizedBox(
            height: Sizes.s12.h,
          ),
          SearchByIngredientsRow(
            text: 'Exclude ingredients',
            icon: Icons.indeterminate_check_box_rounded,
            hint: 'Ingredients you don\'t have',
            ingredients: state.excludeIngredients,
            onChanged: (ingredient) =>
                filterNotifier.onIngredientToExcludeChanged(ingredient),
            onPressed: () =>
                filterNotifier.addExcludedIngredient(state.ingredientToExclude),
          ),
        ],
      ),
    );
  }
}

class SearchByIngredientsRow extends ConsumerStatefulWidget {
  const SearchByIngredientsRow({
    Key? key,
    required this.text,
    required this.icon,
    required this.hint,
    required this.onPressed,
    required this.onChanged,
    required this.ingredients,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final String hint;
  final void Function()? onPressed;
  final void Function(String)? onChanged;
  final List<String> ingredients;

  @override
  ConsumerState<SearchByIngredientsRow> createState() =>
      _SearchByIngredientsRowState();
}

class _SearchByIngredientsRowState
    extends ConsumerState<SearchByIngredientsRow> {
  @override
  Widget build(BuildContext context) {
    final filterNotifier = ref.read(filterRecipesNotifierProvider.notifier);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: Sizes.s8.h),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                widget.icon,
                color: AppColors.primaryRed,
              ),
              SizedBox(
                width: Sizes.s4.w,
              ),
              Text(
                widget.text,
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ],
          ),
          SizedBox(
            height: Sizes.s8.h,
          ),
          Row(
            children: [
              Flexible(
                flex: 2,
                child: TextFormField(
                  onChanged: widget.onChanged,
                  decoration: InputDecoration(
                    hintText: widget.hint,
                  ),
                ),
              ),
              SizedBox(
                width: Sizes.s12.h,
              ),
              Flexible(
                flex: 1,
                child: DrecipeButton(
                  onPressed: widget.onPressed,
                  text: 'Add',
                  icon: const Icon(Icons.add),
                ),
              ),
            ],
          ),
          SizedBox(
            height: Sizes.s12.h,
          ),
          if (widget.ingredients.isNotEmpty) ...[
            DrecipeCarousel(
              items: widget.ingredients,
              builder: (context, index) => Chip(
                label: Text(index),
                onDeleted: () => setState(() =>
                    widget.text == 'Include ingredients'
                        ? filterNotifier.removeIncludedIngredient(index)
                        : filterNotifier.removeExcludedIngredient(index)),
              ),
              height: Sizes.s48.h,
              itemCount: widget.ingredients.length,
              separatorWidth: Sizes.s12.w,
            ),
          ],
        ],
      ),
    );
  }
}
