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
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
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

String capitalize(String text) {
  if (text.isEmpty) {
    return text;
  }
  return text[0].toUpperCase() + text.substring(1).toLowerCase();
}
