import 'package:drecipe/features/search_recipes/di/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:drecipe/features/common/ui/styles.dart';

class CaloriesSection extends ConsumerWidget {
  const CaloriesSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filterNotifier = ref.read(filterRecipesNotifierProvider.notifier);
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Sizes.bodyHorizontalPadding.w, vertical: Sizes.s8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Min calories',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                SizedBox(
                  height: Sizes.s8.h,
                ),
                CaloriesTextFormField(
                  onChanged: (value) =>
                      filterNotifier.onMinCaloriesChanged(value),
                ),
              ],
            ),
          ),
          SizedBox(
            width: Sizes.s32.w,
          ),
          Flexible(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Max calories',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                SizedBox(
                  height: Sizes.s8.h,
                ),
                CaloriesTextFormField(
                  onChanged: (value) =>
                      filterNotifier.onMaxCaloriesChanged(value),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CaloriesTextFormField extends StatelessWidget {
  const CaloriesTextFormField({
    Key? key,
    this.onChanged,
  }) : super(key: key);

  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: const InputDecoration(
        hintText: '0',
        contentPadding: EdgeInsets.all(Sizes.s12),
      ),
    );
  }
}
