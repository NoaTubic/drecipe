import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/search_recipes/domain/state/filter/filter_constants.dart';

import 'package:drecipe/features/search_recipes/presentation/widgets/sort/dropdown_helpers.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SortingDropdownButton extends StatefulWidget {
  const SortingDropdownButton({super.key});

  @override
  State<SortingDropdownButton> createState() => _SortingDropdownButtonState();
}

class _SortingDropdownButtonState extends State<SortingDropdownButton> {
  @override
  Widget build(BuildContext context) {
    String? selectedValue;

    return Container(
      padding: EdgeInsets.only(left: Sizes.s8.w),
      width: Sizes.s192.w,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightGrey1),
        borderRadius: BorderRadius.circular(Sizes.circularRadius.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Sort by:'),
          SizedBox(
            width: Sizes.s4.w,
          ),
          DropdownButtonHideUnderline(
            child: DropdownButton2(
              isExpanded: true,
              hint: Text(
                'Popularity',
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).hintColor,
                ),
              ),
              items: addDividersAfterItems(FilterConstants.sortingOptions),
              customItemsHeights:
                  getCustomItemsHeights(FilterConstants.sortingOptions),
              value: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value as String;
                });
              },
              alignment: AlignmentDirectional.center,
              buttonHeight: Sizes.s40.h,
              dropdownMaxHeight: 380.h,
              buttonWidth: Sizes.s120.w,
              itemPadding: const EdgeInsets.symmetric(horizontal: 8.0),
            ),
          ),
        ],
      ),
    );
  }
}
