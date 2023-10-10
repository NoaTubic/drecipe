import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_button.dart';
import 'package:drecipe/features/discover_recipes/presentation/widgets/drecipe_card_swiper.dart';
import 'package:drecipe/features/search_recipes/domain/state/filter/filter_recipes_notifier.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchByIngredientsSection extends HookConsumerWidget {
  const SearchByIngredientsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filterNotifier = ref.read(filterRecipesNotifierProvider.notifier);
    final state = ref.watch(filterRecipesNotifierProvider);
    final controllerInclude = useTextEditingController();
    final controllerExclude = useTextEditingController();

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Sizes.bodyHorizontalPadding.w, vertical: Sizes.s12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchByIngredientsRow(
            controller: controllerInclude,
            text: S.current.search_by_ingredients_include,
            icon: Icons.add_box_rounded,
            hint: S.current.search_by_ingredients_include_hint,
            ingredients: state.includeIngredients,
            onChanged: (ingredient) =>
                filterNotifier.onIngredientToIncludeChanged(ingredient),
            onPressed: () {
              filterNotifier.addIncludedIngredient(state.ingredientToInclude);
              controllerInclude.clear();
            },
          ),
          SizedBox(
            height: Sizes.s12.h,
          ),
          SearchByIngredientsRow(
            controller: controllerExclude,
            text: S.current.search_by_ingredients_exclude,
            icon: Icons.indeterminate_check_box_rounded,
            hint: S.current.search_by_ingredients_exclude_hint,
            ingredients: state.excludeIngredients,
            onChanged: (ingredient) =>
                filterNotifier.onIngredientToExcludeChanged(ingredient),
            onPressed: () {
              filterNotifier.addExcludedIngredient(state.ingredientToExclude);
              controllerExclude.clear();
            },
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
    required this.controller,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final String hint;
  final void Function()? onPressed;
  final void Function(String)? onChanged;
  final List<String> ingredients;
  final TextEditingController controller;

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
                  controller: widget.controller,
                ),
              ),
              SizedBox(
                width: Sizes.s12.h,
              ),
              Flexible(
                flex: 1,
                child: DrecipeButton(
                  onPressed: widget.onPressed,
                  text: S.current.search_by_ingredients_add,
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
                    widget.text == S.current.search_by_ingredients_include
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
