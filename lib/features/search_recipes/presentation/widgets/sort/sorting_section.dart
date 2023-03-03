import 'package:drecipe/features/search_recipes/presentation/widgets/sort/sorting_direction.dart';
import 'package:drecipe/features/search_recipes/presentation/widgets/sort/sorting_dropdown_button.dart';
import 'package:flutter/material.dart';

class SortingSection extends StatelessWidget {
  const SortingSection({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Flexible(
          flex: 4,
          child: SortingDropdownButton(),
        ),
        Flexible(
          flex: 2,
          child: SortingDirection(),
        ),
      ],
    );
  }
}
