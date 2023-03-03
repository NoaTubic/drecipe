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
    FirebaseInitPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const FirebaseInitPage(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    SplashPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const SplashPage(),
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
    SignInPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const SignInPage(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    RegistrationPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const RegistrationPage(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    EmailVerificationPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const EmailVerificationPage(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    AccountRecoveryPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const AccountRecoveryPage(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    AccountRecoveryResetPasswordPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ResetPasswordPage(),
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
          child: RecipeDetailsScreen(
              recipeId: args.recipeId, imageUrl: args.imageUrl, key: args.key),
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
    },
    MealTimeScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const MealTimeScreen(),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(FirebaseInitPageRoute.name, path: '/'),
        RouteConfig(SplashPageRoute.name, path: '/splash-screen'),
        RouteConfig(SettingsScreenRoute.name, path: '/settings-screen'),
        RouteConfig(SignInPageRoute.name, path: '/sign-in-screen'),
        RouteConfig(RegistrationPageRoute.name, path: '/registration-screen'),
        RouteConfig(EmailVerificationPageRoute.name,
            path: '/email-verification-screen'),
        RouteConfig(AccountRecoveryPageRoute.name,
            path: '/account-recovery-screen'),
        RouteConfig(AccountRecoveryResetPasswordPageRoute.name,
            path: '/account-recovery-reset-email-screen'),
        RouteConfig(DiscoverRecipesScreenRoute.name,
            path: '/discover-recipes-screen'),
        RouteConfig(DrecipeBottomNavBarRoute.name,
            path: '/drecipe-bottom-nav-bar'),
        RouteConfig(RecipeDetailsScreenRoute.name,
            path: '/recipe-details-screen'),
        RouteConfig(DetailedInstructionsScreenRoute.name,
            path: '/detailed-instructions-screen'),
        RouteConfig(IngredientsScreenRoute.name, path: '/ingredients-screen'),
        RouteConfig(MealTimeScreenRoute.name, path: '/meal-time-screen')
      ];
}

/// generated route for
/// [FirebaseInitPage]
class FirebaseInitPageRoute extends PageRouteInfo<void> {
  const FirebaseInitPageRoute() : super(FirebaseInitPageRoute.name, path: '/');

  static const String name = 'FirebaseInitPageRoute';
}

/// generated route for
/// [SplashPage]
class SplashPageRoute extends PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/splash-screen');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [SettingsScreen]
class SettingsScreenRoute extends PageRouteInfo<void> {
  const SettingsScreenRoute()
      : super(SettingsScreenRoute.name, path: '/settings-screen');

  static const String name = 'SettingsScreenRoute';
}

/// generated route for
/// [SignInPage]
class SignInPageRoute extends PageRouteInfo<void> {
  const SignInPageRoute()
      : super(SignInPageRoute.name, path: '/sign-in-screen');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [RegistrationPage]
class RegistrationPageRoute extends PageRouteInfo<void> {
  const RegistrationPageRoute()
      : super(RegistrationPageRoute.name, path: '/registration-screen');

  static const String name = 'RegistrationPageRoute';
}

/// generated route for
/// [EmailVerificationPage]
class EmailVerificationPageRoute extends PageRouteInfo<void> {
  const EmailVerificationPageRoute()
      : super(EmailVerificationPageRoute.name,
            path: '/email-verification-screen');

  static const String name = 'EmailVerificationPageRoute';
}

/// generated route for
/// [AccountRecoveryPage]
class AccountRecoveryPageRoute extends PageRouteInfo<void> {
  const AccountRecoveryPageRoute()
      : super(AccountRecoveryPageRoute.name, path: '/account-recovery-screen');

  static const String name = 'AccountRecoveryPageRoute';
}

/// generated route for
/// [AccountRecoveryResetPasswordPage]
class AccountRecoveryResetPasswordPageRoute extends PageRouteInfo<void> {
  const AccountRecoveryResetPasswordPageRoute()
      : super(AccountRecoveryResetPasswordPageRoute.name,
            path: '/account-recovery-reset-email-screen');

  static const String name = 'AccountRecoveryResetPasswordPageRoute';
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
  RecipeDetailsScreenRoute(
      {required int recipeId, required String imageUrl, Key? key})
      : super(RecipeDetailsScreenRoute.name,
            path: '/recipe-details-screen',
            args: RecipeDetailsScreenRouteArgs(
                recipeId: recipeId, imageUrl: imageUrl, key: key));

  static const String name = 'RecipeDetailsScreenRoute';
}

class RecipeDetailsScreenRouteArgs {
  const RecipeDetailsScreenRouteArgs(
      {required this.recipeId, required this.imageUrl, this.key});

  final int recipeId;

  final String imageUrl;

  final Key? key;

  @override
  String toString() {
    return 'RecipeDetailsScreenRouteArgs{recipeId: $recipeId, imageUrl: $imageUrl, key: $key}';
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

/// generated route for
/// [MealTimeScreen]
class MealTimeScreenRoute extends PageRouteInfo<void> {
  MealTimeScreenRoute()
      : super(MealTimeScreenRoute.name, path: '/meal-time-screen');

  static const String name = 'MealTimeScreenRoute';
}
