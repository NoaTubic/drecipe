import 'package:drecipe/features/common/ui/colors/colors.dart';
import 'package:flutter/material.dart';

class FadeMask extends StatelessWidget {
  const FadeMask({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect rect) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.black,
            Colors.transparent,
            Colors.transparent,
            AppColors.black
          ],
          stops: const [0.0, 0.0, 0.9, 1.0],
        ).createShader(rect);
      },
      blendMode: BlendMode.dstOut,
      child: child,
    );
  }
}
