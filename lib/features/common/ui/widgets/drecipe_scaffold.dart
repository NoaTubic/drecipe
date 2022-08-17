import 'package:drecipe/features/common/ui/sizes/sizes.dart';
import 'package:flutter/material.dart';

class DrecipeScaffold extends StatelessWidget {
  const DrecipeScaffold({
    Key? key,
    this.appBar,
    required this.body,
  }) : super(key: key);

  final AppBar? appBar;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: appBar,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: Sizes.bodyVerticalPadding,
              horizontal: Sizes.bodyHorizontalPadding),
          child: body,
        ),
      ),
    );
  }
}
