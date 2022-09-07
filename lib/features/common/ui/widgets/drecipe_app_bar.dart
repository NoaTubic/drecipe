import 'package:drecipe/features/common/ui/sizes/sizes.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_back_button.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/settings_button.dart';
import 'package:flutter/material.dart';

class DrecipeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DrecipeAppBar({
    Key? key,
    this.backButton = true,
    this.title,
    this.leftAction,
    this.elevated = true,
  }) : super(key: key);

  final bool backButton;
  final String? title;
  final void Function()? leftAction;
  final bool elevated;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title ?? ''),
      automaticallyImplyLeading: false,
      leading: backButton
          ? DrecipeBackButton(
              onTap: leftAction,
            )
          : null,
      actions: const [
        SettingsButton(),
      ],
      elevation: elevated ? Sizes.elevationMain : Sizes.s0,
    );
  }
}
