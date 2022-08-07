import 'package:auto_route/auto_route.dart';
import 'package:drecipe/features/explore_recipes/ui/screens/explore_recipes.dart';
import 'package:drecipe/features/splash/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    CustomRoute(
      page: SplashScreen,
      initial: true,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: ExploreRecipesScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
  ],
)
class AppRouter extends _$AppRouter {}

abstract class ScreenRouter {
  static void replaceScreen(
      BuildContext context, PageRouteInfo<dynamic> route) {
    AutoRouter.of(context).replace(route);
  }

  static void pushScreen(BuildContext context, PageRouteInfo<dynamic> route) {
    AutoRouter.of(context).push(route);
  }
}
