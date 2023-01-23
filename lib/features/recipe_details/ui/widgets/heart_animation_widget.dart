import 'package:drecipe/features/common/constants/constants.dart';
import 'package:flutter/material.dart';

class HeartAnimationWidget extends StatefulWidget {
  const HeartAnimationWidget({
    Key? key,
    required this.child,
    required this.isAnimating,
    this.duration = const Duration(milliseconds: DurationConstants.d040),
    this.onEnd,
  }) : super(key: key);

  final Widget child;
  final bool isAnimating;
  final Duration? duration;
  final VoidCallback? onEnd;

  @override
  State<HeartAnimationWidget> createState() => _HeartAnimationWidgetState();
}

class _HeartAnimationWidgetState extends State<HeartAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scale;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: DurationConstants.d040));

    scale = Tween<double>(begin: 1, end: 1.2).animate(controller);
  }

  @override
  void didUpdateWidget(covariant HeartAnimationWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isAnimating != oldWidget.isAnimating) {
      animate();
    }
  }

  Future animate() async {
    await controller.forward();
    await controller.reverse();
    if (widget.onEnd != null) {
      widget.onEnd!();
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      ScaleTransition(scale: scale, child: widget.child);
}
