import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/domain/providers/providers.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/discover_recipes/presentation/pages/discover_recipes_page.dart';
import 'package:drecipe/features/favorite_recipes/presentation/pages/favorite_recipes_page.dart';
import 'package:drecipe/features/profile/presentation/pages/profile_page.dart';
import 'package:drecipe/features/search_recipes/presentation/pages/search_recipes_page.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class DrecipeBottomNavBar extends ConsumerStatefulWidget {
  const DrecipeBottomNavBar({Key? key}) : super(key: key);

  @override
  ConsumerState<DrecipeBottomNavBar> createState() =>
      _DrecipeBottomNavBarState();
}

class _DrecipeBottomNavBarState extends ConsumerState<DrecipeBottomNavBar> {
  late PersistentTabController _controller;
  @override
  void initState() {
    _controller = ref.refresh(bottomNavBarProvider).controller;

    _controller.addListener((() => ref
        .read(bottomNavBarProvider.notifier)
        .onTabSelected(_controller.index)));
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(() {});
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarItems(
        discoverRecipesLabel: s.bottom_nav_bar_discover,
        searchRecipesLabel: s.bottom_nav_bar_search,
        favoriteRecipesLabel: s.bottom_nav_bar_favorite,
        profileLabel: s.bottom_nav_bar_profile,
        context: context,
      ),
      navBarStyle: NavBarStyle.style6,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: DurationConstants.d040),
        curve: Curves.ease,
      ),
      decoration: NavBarDecoration(
        colorBehindNavBar: AppColors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(Sizes.s2.w, Sizes.s0),
            blurRadius: Sizes.s4.r,
            color: AppColors.lightGrey1.withOpacity(OpacityConstants.op05),
          ),
          BoxShadow(
            offset: Offset(-Sizes.s2.w, Sizes.s0),
            blurRadius: Sizes.s4.r,
            color: AppColors.lightGrey1.withOpacity(OpacityConstants.op05),
          ),
        ],
      ),
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const DiscoverRecipesPage(),
    const SearchRecipesPage(),
    const FavoriteRecipesPage(),
    const ProfilePage(),
  ];
}

List<PersistentBottomNavBarItem> _navBarItems({
  required String discoverRecipesLabel,
  required String searchRecipesLabel,
  required String favoriteRecipesLabel,
  required String profileLabel,
  required BuildContext context,
}) {
  return [
    _navBarItem(
      context: context,
      icon: Icons.home_rounded,
      label: discoverRecipesLabel,
    ),
    _navBarItem(
      context: context,
      icon: Icons.search_rounded,
      label: searchRecipesLabel,
    ),
    _navBarItem(
      context: context,
      icon: Icons.favorite_rounded,
      label: favoriteRecipesLabel,
    ),
    _navBarItem(
      context: context,
      icon: Icons.person_rounded,
      label: profileLabel,
    ),
  ];
}

PersistentBottomNavBarItem _navBarItem({
  required IconData icon,
  required BuildContext context,
  required String label,
}) {
  return PersistentBottomNavBarItem(
      inactiveIcon: Icon(
        icon,
        color: AppColors.lightGrey1,
        size: Sizes.s24.w,
      ),
      icon: Icon(
        icon,
        color: AppColors.primaryRed,
        size: Sizes.s28.w,
      ),
      title: label,
      textStyle: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(fontSize: FontSizes.s14.sp),
      activeColorPrimary: AppColors.primaryRed,
      inactiveColorPrimary: AppColors.lightGrey1);
}
