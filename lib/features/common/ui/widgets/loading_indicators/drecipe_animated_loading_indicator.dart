import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:loading_animation_widget/loading_animation_widget.dart';

class DrecipeAnimatedLoadingIndicator extends StatelessWidget {
  const DrecipeAnimatedLoadingIndicator({
    Key? key,
    this.alignment = Alignment.center,
  }) : super(key: key);

  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: LoadingAnimationWidget.flickr(
        leftDotColor: AppColors.black.withOpacity(OpacityConstants.op08),
        rightDotColor: AppColors.secondaryLightRed1,
        size: Sizes.s38,
      ),
    );
  }
}
