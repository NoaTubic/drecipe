import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_back_button.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/settings_button.dart';
import 'package:flutter/material.dart';

class DrecipeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DrecipeAppBar(
      {Key? key, this.backButton = true, required this.title, this.leftAction})
      : super(key: key);

  final bool backButton;
  final String title;
  final void Function()? leftAction;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      automaticallyImplyLeading: false,
      leading: backButton
          ? DrecipeBackButton(
              onTap: leftAction,
            )
          : null,
      actions: const [
        SettingsButton(),
      ],
    );
  }
}
