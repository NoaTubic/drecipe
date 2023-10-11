import 'package:flutter/material.dart';

import 'package:drecipe/features/common/ui/colors/colors.dart';

class FadeMask extends StatefulWidget {
  const FadeMask({
    Key? key,
    required this.child,
    this.scrollController,
    this.enabled = true,
    this.begin = Alignment.topCenter,
    this.end = Alignment.bottomCenter,
  }) : super(key: key);

  final Widget child;
  final ScrollController? scrollController;
  final bool enabled;
  final Alignment begin;
  final Alignment end;

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
              widget.scrollController!.position.maxScrollExtent) {
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
            begin: widget.begin,
            end: widget.end,
            colors: widget.enabled
                ? isScrollEnd
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
                      ]
                : [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent
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
