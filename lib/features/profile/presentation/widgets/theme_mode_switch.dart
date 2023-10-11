import 'package:drecipe/features/profile/domain/providers/providers.dart';
import 'package:drecipe/features/profile/presentation/widgets/profile_tile.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ThemeModeSwitch extends ConsumerWidget {
  const ThemeModeSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeNotifierProvider.notifier);
    return ProfileTile(
      text: S.of(context).profile_screen_theme_mode,
      child: FlutterSwitch(
        switchBorder: Border.all(color: AppColors.lightGrey1),
        toggleSize: Sizes.s32.w,
        toggleColor: AppColors.primaryRed,
        toggleBorder: Border.all(color: AppColors.lightGrey1),
        height: Sizes.s38.h,
        value: ref.watch(themeModeNotifierProvider) == ThemeMode.light
            ? true
            : false,
        width: Sizes.s72.w,
        activeColor: AppColors.white,
        inactiveColor: AppColors.darkGrey1,
        onToggle: (_) => themeMode.changeTheme(),
        inactiveIcon: Icon(
          Icons.dark_mode_rounded,
          color: AppColors.white,
        ),
        activeIcon: Icon(
          Icons.light_mode_rounded,
          color: AppColors.white,
        ),
      ),
    );
  }
}
