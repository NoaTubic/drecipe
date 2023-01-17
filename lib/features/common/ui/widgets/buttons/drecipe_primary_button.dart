import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/common/ui/widgets/loading_indicators/drecipe_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DrecipePrimaryButton extends ConsumerWidget {
  const DrecipePrimaryButton({
    Key? key,
    this.onPressed,
    required this.text,
    this.isEnabled = true,
    this.isLoading = false,
  }) : super(key: key);

  final void Function()? onPressed;
  final String text;
  final bool isEnabled;
  final bool isLoading;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isEnabled
            ? isLoading
                ? () {}
                : onPressed
            : null,
        style: isEnabled
            ? null
            : ElevatedButton.styleFrom(
                backgroundColor: AppColors.lightGrey1,
                side: BorderSide(color: AppColors.lightGrey2),
              ),
        child:
            isLoading ? const DrecipeCircularProgressIndicator() : Text(text),
      ),
    );
  }
}
