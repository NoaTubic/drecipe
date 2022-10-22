import 'package:drecipe/features/common/constants/constants.dart';
import 'package:drecipe/features/common/ui/styles.dart';
import 'package:drecipe/features/discover_recipes/ui/screens/discover_recipes_screen.dart';
import 'package:drecipe/features/favorite_recipes/ui/screens/favorite_recipes_screen.dart';
import 'package:drecipe/features/profile/ui/screens/profile_screen.dart';
import 'package:drecipe/features/search_by_ingredients/ui/search_by_ingredients_screen.dart';
import 'package:drecipe/features/search_recipes/ui/search_recipes_screen.dart';
import 'package:drecipe/generated/l10n.dart';
import 'package:flutter/material.dart';
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
        searchByIngredientsLabel: s.bottom_nav_bar_search_by_ingredients,
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
        // adjustScreenBottomPaddingOnCurve: false,
        colorBehindNavBar: AppColors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(Sizes.s2, Sizes.s0),
            blurRadius: Sizes.s4,
            color: AppColors.lightGrey1.withOpacity(OpacityConstants.op05),
          ),
          BoxShadow(
            offset: const Offset(-Sizes.s2, Sizes.s0),
            blurRadius: Sizes.s4,
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
    const SearchByIngredientsScreen(),
    const FavoriteRecipesScreen(),
    const ProfileScreen(),
  ];
}

List<PersistentBottomNavBarItem> _navBarItems({
  required String discoverRecipesLabel,
  required String searchRecipesLabel,
  required String searchByIngredientsLabel,
  required String favoriteRecipesLabel,
  required String profileLabel,
  required BuildContext context,
}) {
  return [
    _navBarItem(
      context: context,
      inactiveIcon: Image.asset(
        ImageAssets.icChefHatInactive,
        color: AppColors.lightGrey1,
        width: Sizes.s28,
      ),
      activeIcon: Image.asset(
        ImageAssets.icChefHatActive,
        color: AppColors.primaryRed,
        width: Sizes.s28,
      ),
      label: discoverRecipesLabel,
    ),
    _navBarItem(
      context: context,
      inactiveIcon: Icon(
        Icons.search_rounded,
        color: AppColors.lightGrey1,
        size: Sizes.s32,
      ),
      activeIcon: Icon(
        Icons.search_rounded,
        color: AppColors.primaryRed,
        size: Sizes.s36,
      ),
      label: searchRecipesLabel,
    ),
    _navBarItem(
      context: context,
      inactiveIcon: Image.asset(
        ImageAssets.icIngredientInactive,
        color: AppColors.lightGrey1,
        width: Sizes.s30,
      ),
      activeIcon: Image.asset(
        ImageAssets.icIngredientActive,
        color: AppColors.primaryRed,
        width: Sizes.s36,
      ),
      label: searchByIngredientsLabel,
    ),
    _navBarItem(
      context: context,
      inactiveIcon: Icon(
        Icons.favorite_border_rounded,
        color: AppColors.lightGrey1,
        size: Sizes.s32,
      ),
      activeIcon: Icon(
        Icons.favorite_rounded,
        color: AppColors.primaryRed,
        size: Sizes.s36,
      ),
      label: favoriteRecipesLabel,
    ),
    _navBarItem(
      context: context,
      inactiveIcon: Icon(
        Icons.person_outline_rounded,
        color: AppColors.lightGrey1,
        size: Sizes.s32,
      ),
      activeIcon: Icon(
        Icons.person,
        color: AppColors.primaryRed,
        size: Sizes.s36,
      ),
      label: profileLabel,
    ),
  ];
}

PersistentBottomNavBarItem _navBarItem({
  required BuildContext context,
  required Widget activeIcon,
  required Widget inactiveIcon,
  required String label,
}) {
  return PersistentBottomNavBarItem(
      inactiveIcon: Padding(
        padding: const EdgeInsets.only(bottom: Sizes.s8),
        child: inactiveIcon,
      ),
      icon: Padding(
        padding: const EdgeInsets.only(bottom: Sizes.s4),
        child: activeIcon,
      ),
      // title: label,
      textStyle: Theme.of(context)
          .textTheme
          .bodyText1!
          .copyWith(fontSize: FontSizes.s12),
      activeColorPrimary: AppColors.primaryRed,
      inactiveColorPrimary: AppColors.lightGrey1);
}
