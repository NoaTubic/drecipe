import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';

class DrecipePasswordTextFormField extends StatefulWidget {
  const DrecipePasswordTextFormField({
    Key? key,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.hasShowPasswordButton = true,
    required this.hintText,
  }) : super(key: key);

  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final String hintText;
  final bool hasShowPasswordButton;

  @override
  State<DrecipePasswordTextFormField> createState() =>
      _DrecipePasswordTextFormFieldState();
}

class _DrecipePasswordTextFormFieldState
    extends State<DrecipePasswordTextFormField> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Sizes.s20),
      child: TextFormField(
        onChanged: widget.onChanged,
        validator: widget.validator,
        obscureText: !isVisible,
        decoration: InputDecoration(
            hintText: widget.hintText,
            suffixIcon: widget.hasShowPasswordButton
                ? GestureDetector(
                    onTap: () => setState(
                      () => isVisible = !isVisible,
                    ),
                    child: Icon(
                      !isVisible ? Icons.visibility : Icons.visibility_off,
                      color: AppColors.lightGrey4,
                    ),
                  )
                : null),
        textInputAction: TextInputAction.next,
        cursorColor: AppColors.primaryRed,
        autocorrect: false,
      ),
    );
  }
}
