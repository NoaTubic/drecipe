import 'package:drecipe/features/common/ui/sizes/sizes.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_app_bar.dart';
import 'package:flutter/material.dart';

class DrecipeScaffold extends StatelessWidget {
  const DrecipeScaffold({
    Key? key,
    this.appBar,
    required this.body,
    this.safeAreaTop = true,
    this.safeAreaBottom = true,
    this.padding = const EdgeInsets.symmetric(
        vertical: Sizes.bodyVerticalPadding,
        horizontal: Sizes.bodyHorizontalPadding),
  }) : super(key: key);

  final DrecipeAppBar? appBar;
  final Widget body;
  final bool safeAreaTop;
  final bool safeAreaBottom;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: appBar,
      body: SafeArea(
        top: safeAreaTop,
        bottom: safeAreaBottom,
        child: Padding(
          padding: padding,
          child: body,
        ),
      ),
    );
  }
}
