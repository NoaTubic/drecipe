import 'package:drecipe/features/common/ui/sizes/sizes.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/drecipe_back_button.dart';
import 'package:drecipe/features/common/ui/widgets/buttons/settings_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrecipeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DrecipeAppBar({
    Key? key,
    this.backButton = true,
    this.title,
    this.leftAction,
    this.elevated = true,
    this.appBarContent,
  }) : super(key: key);

  final bool backButton;
  final String? title;
  final void Function()? leftAction;
  final bool elevated;
  final Widget? appBarContent;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: appBarContent ?? Text(title ?? ''),
      ),
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
