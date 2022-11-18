import 'package:flutter/material.dart';

import 'package:drecipe/features/common/ui/colors/colors.dart';

class FadeMask extends StatefulWidget {
  const FadeMask({
    Key? key,
    required this.child,
    this.scrollController,
  }) : super(key: key);

  final Widget child;
  final ScrollController? scrollController;

  @override
  State<FadeMask> createState() => _FadeMaskState();
}

bool isScrollEnd = false;

class _FadeMaskState extends State<FadeMask> {
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollEndNotification>(
      onNotification: (notification) {
        if (widget.scrollController != null) {
          if (widget.scrollController!.position.pixels ==
              (widget.scrollController!.position.maxScrollExtent)) {
            setState(
              () => isScrollEnd = true,
            );
            return true;
          }
          setState(() => isScrollEnd = false);

          return false;
        }
        return false;
      },
      child: ShaderMask(
        shaderCallback: (Rect rect) {
          return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isScrollEnd
                ? [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent
                  ]
                : [
                    AppColors.black,
                    Colors.transparent,
                    Colors.transparent,
                    AppColors.black
                  ],
            stops: const [0.0, 0.0, 0.9, 1.0],
          ).createShader(rect);
        },
        blendMode: BlendMode.dstOut,
        child: widget.child,
      ),
    );
  }
}
