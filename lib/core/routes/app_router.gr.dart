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
    RegistrationScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const RegistrationScreen(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    EmailVerificationScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const EmailVerificationScreen(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    AccountRecoveryScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const AccountRecoveryScreen(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    AccountRecoveryResetEmailScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const AccountRecoveryResetEmailScreen(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    DiscoverRecipesScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const DiscoverRecipesScreen(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    DrecipeBottomNavBarRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const DrecipeBottomNavBar(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    RecipeDetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<RecipeDetailsScreenRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child: RecipeDetailsScreen(key: args.key, recipe: args.recipe),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    DetailedInstructionsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<DetailedInstructionsScreenRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child: DetailedInstructionsScreen(
              key: args.key, instructions: args.instructions),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    IngredientsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<IngredientsScreenRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child: IngredientsScreen(key: args.key, recipe: args.recipe),
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
        RouteConfig(RegistrationScreenRoute.name, path: '/registration-screen'),
        RouteConfig(EmailVerificationScreenRoute.name,
            path: '/email-verification-screen'),
        RouteConfig(AccountRecoveryScreenRoute.name,
            path: '/account-recovery-screen'),
        RouteConfig(AccountRecoveryResetEmailScreenRoute.name,
            path: '/account-recovery-reset-email-screen'),
        RouteConfig(DiscoverRecipesScreenRoute.name,
            path: '/discover-recipes-screen'),
        RouteConfig(DrecipeBottomNavBarRoute.name,
            path: '/drecipe-bottom-nav-bar'),
        RouteConfig(RecipeDetailsScreenRoute.name,
            path: '/recipe-details-screen'),
        RouteConfig(DetailedInstructionsScreenRoute.name,
            path: '/detailed-instructions-screen'),
        RouteConfig(IngredientsScreenRoute.name, path: '/ingredients-screen')
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
/// [RegistrationScreen]
class RegistrationScreenRoute extends PageRouteInfo<void> {
  const RegistrationScreenRoute()
      : super(RegistrationScreenRoute.name, path: '/registration-screen');

  static const String name = 'RegistrationScreenRoute';
}

/// generated route for
/// [EmailVerificationScreen]
class EmailVerificationScreenRoute extends PageRouteInfo<void> {
  const EmailVerificationScreenRoute()
      : super(EmailVerificationScreenRoute.name,
            path: '/email-verification-screen');

  static const String name = 'EmailVerificationScreenRoute';
}

/// generated route for
/// [AccountRecoveryScreen]
class AccountRecoveryScreenRoute extends PageRouteInfo<void> {
  const AccountRecoveryScreenRoute()
      : super(AccountRecoveryScreenRoute.name,
            path: '/account-recovery-screen');

  static const String name = 'AccountRecoveryScreenRoute';
}

/// generated route for
/// [AccountRecoveryResetEmailScreen]
class AccountRecoveryResetEmailScreenRoute extends PageRouteInfo<void> {
  const AccountRecoveryResetEmailScreenRoute()
      : super(AccountRecoveryResetEmailScreenRoute.name,
            path: '/account-recovery-reset-email-screen');

  static const String name = 'AccountRecoveryResetEmailScreenRoute';
}

/// generated route for
/// [DiscoverRecipesScreen]
class DiscoverRecipesScreenRoute extends PageRouteInfo<void> {
  const DiscoverRecipesScreenRoute()
      : super(DiscoverRecipesScreenRoute.name,
            path: '/discover-recipes-screen');

  static const String name = 'DiscoverRecipesScreenRoute';
}

/// generated route for
/// [DrecipeBottomNavBar]
class DrecipeBottomNavBarRoute extends PageRouteInfo<void> {
  const DrecipeBottomNavBarRoute()
      : super(DrecipeBottomNavBarRoute.name, path: '/drecipe-bottom-nav-bar');

  static const String name = 'DrecipeBottomNavBarRoute';
}

/// generated route for
/// [RecipeDetailsScreen]
class RecipeDetailsScreenRoute
    extends PageRouteInfo<RecipeDetailsScreenRouteArgs> {
  RecipeDetailsScreenRoute({Key? key, required Recipe recipe})
      : super(RecipeDetailsScreenRoute.name,
            path: '/recipe-details-screen',
            args: RecipeDetailsScreenRouteArgs(key: key, recipe: recipe));

  static const String name = 'RecipeDetailsScreenRoute';
}

class RecipeDetailsScreenRouteArgs {
  const RecipeDetailsScreenRouteArgs({this.key, required this.recipe});

  final Key? key;

  final Recipe recipe;

  @override
  String toString() {
    return 'RecipeDetailsScreenRouteArgs{key: $key, recipe: $recipe}';
  }
}

/// generated route for
/// [DetailedInstructionsScreen]
class DetailedInstructionsScreenRoute
    extends PageRouteInfo<DetailedInstructionsScreenRouteArgs> {
  DetailedInstructionsScreenRoute(
      {Key? key, required List<Instructions> instructions})
      : super(DetailedInstructionsScreenRoute.name,
            path: '/detailed-instructions-screen',
            args: DetailedInstructionsScreenRouteArgs(
                key: key, instructions: instructions));

  static const String name = 'DetailedInstructionsScreenRoute';
}

class DetailedInstructionsScreenRouteArgs {
  const DetailedInstructionsScreenRouteArgs(
      {this.key, required this.instructions});

  final Key? key;

  final List<Instructions> instructions;

  @override
  String toString() {
    return 'DetailedInstructionsScreenRouteArgs{key: $key, instructions: $instructions}';
  }
}

/// generated route for
/// [IngredientsScreen]
class IngredientsScreenRoute extends PageRouteInfo<IngredientsScreenRouteArgs> {
  IngredientsScreenRoute({Key? key, required Recipe recipe})
      : super(IngredientsScreenRoute.name,
            path: '/ingredients-screen',
            args: IngredientsScreenRouteArgs(key: key, recipe: recipe));

  static const String name = 'IngredientsScreenRoute';
}

class IngredientsScreenRouteArgs {
  const IngredientsScreenRouteArgs({this.key, required this.recipe});

  final Key? key;

  final Recipe recipe;

  @override
  String toString() {
    return 'IngredientsScreenRouteArgs{key: $key, recipe: $recipe}';
  }
}
