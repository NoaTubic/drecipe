import 'package:flutter/material.dart';

import 'package:drecipe/features/common/ui/styles.dart';

class DrecipeTextFormField extends StatelessWidget {
  const DrecipeTextFormField({
    Key? key,
    this.onChanged,
    this.validator,
    required this.textInputType,
    this.textInputAction = TextInputAction.next,
    required this.hintText,
    this.onEditingComplete,
  }) : super(key: key);

  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final String hintText;

  final void Function()? onEditingComplete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Sizes.s20),
      child: TextFormField(
        onChanged: onChanged,
        validator: validator,
        onEditingComplete: onEditingComplete,
        decoration: InputDecoration(
          hintText: hintText,
        ),
        keyboardType: textInputType,
        textInputAction: TextInputAction.next,
        cursorColor: AppColors.primaryRed,
        autocorrect: false,
      ),
    );
  }
}
