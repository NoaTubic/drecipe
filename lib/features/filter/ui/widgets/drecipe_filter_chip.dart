import 'package:drecipe/features/search_recipes/di/providers.dart';
import 'package:flutter/material.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DrecipeFilterChip extends ConsumerStatefulWidget {
  const DrecipeFilterChip({
    Key? key,
    required this.text,
    required this.filter,
  }) : super(key: key);

  final String text;
  final String filter;

  @override
  ConsumerState<DrecipeFilterChip> createState() => _DrecipeFilterChipState();
}

class _DrecipeFilterChipState extends ConsumerState<DrecipeFilterChip>
    with AutomaticKeepAliveClientMixin {
  bool isSelected = false;
  @override
  void initState() {
    isSelected = ref
        .read(filterRecipesNotifierProvider.notifier)
        .checkIfSelected(widget.text, widget.filter);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final filterNotifier = ref.read(filterRecipesNotifierProvider.notifier);
    return FilterChip(
      label: Text(widget.text),
      selected: isSelected,
      onSelected: (value) {
        isSelected
            ? filterNotifier.removeFilter(widget.text, widget.filter)
            : filterNotifier.addFilter(widget.text, widget.filter);
        setState(() {
          isSelected = !isSelected;
        });
      },
      selectedColor: AppColors.primaryRed,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
