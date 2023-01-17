import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/discover_recipes/ui/screens/discover_recipes_screen.dart';
import 'package:drecipe/features/favorite_recipes/ui/screens/favorite_recipes_screen.dart';
import 'package:drecipe/features/profile/ui/screens/profile_screen.dart';
import 'package:drecipe/features/search_recipes/ui/search_recipes_screen.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class DrecipeBottomNavBar extends StatelessWidget {
  const DrecipeBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarItems(
        discoverRecipesLabel: s.bottom_nav_bar_discover,
        searchRecipesLabel: s.bottom_nav_bar_search,
        favoriteRecipesLabel: s.bottom_nav_bar_favorite,
        profileLabel: s.bottom_nav_bar_profile,
        context: context,
      ),
      navBarStyle: NavBarStyle.style6,
      backgroundColor: AppColors.white,
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
    const DiscoverRecipesScreen(),
    const SearchRecipesScreen(),
    const FavoriteRecipesScreen(),
    const ProfileScreen(),
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
          .bodyText1!
          .copyWith(fontSize: FontSizes.s14.sp),
      activeColorPrimary: AppColors.primaryRed,
      inactiveColorPrimary: AppColors.lightGrey1);
}
