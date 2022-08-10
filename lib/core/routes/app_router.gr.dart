// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    FirebaseInitScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const FirebaseInitScreen(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    SplashScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const SplashScreen(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    SettingsScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const SettingsScreen(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    SignInScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const SignInScreen(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    ExploreRecipesScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ExploreRecipesScreen(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(FirebaseInitScreenRoute.name, path: '/'),
        RouteConfig(SplashScreenRoute.name, path: '/splash-screen'),
        RouteConfig(SettingsScreenRoute.name, path: '/settings-screen'),
        RouteConfig(SignInScreenRoute.name, path: '/sign-in-screen'),
        RouteConfig(ExploreRecipesScreenRoute.name,
            path: '/explore-recipes-screen')
      ];
}

/// generated route for
/// [FirebaseInitScreen]
class FirebaseInitScreenRoute extends PageRouteInfo<void> {
  const FirebaseInitScreenRoute()
      : super(FirebaseInitScreenRoute.name, path: '/');

  static const String name = 'FirebaseInitScreenRoute';
}

/// generated route for
/// [SplashScreen]
class SplashScreenRoute extends PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(SplashScreenRoute.name, path: '/splash-screen');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [SettingsScreen]
class SettingsScreenRoute extends PageRouteInfo<void> {
  const SettingsScreenRoute()
      : super(SettingsScreenRoute.name, path: '/settings-screen');

  static const String name = 'SettingsScreenRoute';
}

/// generated route for
/// [SignInScreen]
class SignInScreenRoute extends PageRouteInfo<void> {
  const SignInScreenRoute()
      : super(SignInScreenRoute.name, path: '/sign-in-screen');

  static const String name = 'SignInScreenRoute';
}

/// generated route for
/// [ExploreRecipesScreen]
class ExploreRecipesScreenRoute extends PageRouteInfo<void> {
  const ExploreRecipesScreenRoute()
      : super(ExploreRecipesScreenRoute.name, path: '/explore-recipes-screen');

  static const String name = 'ExploreRecipesScreenRoute';
}
