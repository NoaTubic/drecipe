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
    DiscoverRecipesPageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const DiscoverRecipesPage(),
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
    RecipeDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<RecipeDetailsPageRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child: RecipeDetailsPage(
              recipeId: args.recipeId, imageUrl: args.imageUrl, key: args.key),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    DetailedInstructionsPageRoute.name: (routeData) {
      final args = routeData.argsAs<DetailedInstructionsPageRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child: DetailedInstructionsPage(
              key: args.key, instructions: args.instructions),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    IngredientsPageRoute.name: (routeData) {
      final args = routeData.argsAs<IngredientsPageRouteArgs>();
      return CustomPage<dynamic>(
          routeData: routeData,
          child: IngredientsPage(key: args.key, recipe: args.recipe),
          transitionsBuilder: TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    MealTimePageRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const MealTimePage(),
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
        RouteConfig(DiscoverRecipesPageRoute.name,
            path: '/discover-recipes-screen'),
        RouteConfig(DrecipeBottomNavBarRoute.name,
            path: '/drecipe-bottom-nav-bar'),
        RouteConfig(RecipeDetailsPageRoute.name,
            path: '/recipe-details-screen'),
        RouteConfig(DetailedInstructionsPageRoute.name,
            path: '/detailed-instructions-screen'),
        RouteConfig(IngredientsPageRoute.name, path: '/ingredients-screen'),
        RouteConfig(MealTimePageRoute.name, path: '/meal-time-screen')
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
/// [DiscoverRecipesPage]
class DiscoverRecipesPageRoute extends PageRouteInfo<void> {
  const DiscoverRecipesPageRoute()
      : super(DiscoverRecipesPageRoute.name, path: '/discover-recipes-screen');

  static const String name = 'DiscoverRecipesPageRoute';
}

/// generated route for
/// [DrecipeBottomNavBar]
class DrecipeBottomNavBarRoute extends PageRouteInfo<void> {
  const DrecipeBottomNavBarRoute()
      : super(DrecipeBottomNavBarRoute.name, path: '/drecipe-bottom-nav-bar');

  static const String name = 'DrecipeBottomNavBarRoute';
}

/// generated route for
/// [RecipeDetailsPage]
class RecipeDetailsPageRoute extends PageRouteInfo<RecipeDetailsPageRouteArgs> {
  RecipeDetailsPageRoute(
      {required int recipeId, required String imageUrl, Key? key})
      : super(RecipeDetailsPageRoute.name,
            path: '/recipe-details-screen',
            args: RecipeDetailsPageRouteArgs(
                recipeId: recipeId, imageUrl: imageUrl, key: key));

  static const String name = 'RecipeDetailsPageRoute';
}

class RecipeDetailsPageRouteArgs {
  const RecipeDetailsPageRouteArgs(
      {required this.recipeId, required this.imageUrl, this.key});

  final int recipeId;

  final String imageUrl;

  final Key? key;

  @override
  String toString() {
    return 'RecipeDetailsPageRouteArgs{recipeId: $recipeId, imageUrl: $imageUrl, key: $key}';
  }
}

/// generated route for
/// [DetailedInstructionsPage]
class DetailedInstructionsPageRoute
    extends PageRouteInfo<DetailedInstructionsPageRouteArgs> {
  DetailedInstructionsPageRoute(
      {Key? key, required List<Instructions> instructions})
      : super(DetailedInstructionsPageRoute.name,
            path: '/detailed-instructions-screen',
            args: DetailedInstructionsPageRouteArgs(
                key: key, instructions: instructions));

  static const String name = 'DetailedInstructionsPageRoute';
}

class DetailedInstructionsPageRouteArgs {
  const DetailedInstructionsPageRouteArgs(
      {this.key, required this.instructions});

  final Key? key;

  final List<Instructions> instructions;

  @override
  String toString() {
    return 'DetailedInstructionsPageRouteArgs{key: $key, instructions: $instructions}';
  }
}

/// generated route for
/// [IngredientsPage]
class IngredientsPageRoute extends PageRouteInfo<IngredientsPageRouteArgs> {
  IngredientsPageRoute({Key? key, required Recipe recipe})
      : super(IngredientsPageRoute.name,
            path: '/ingredients-screen',
            args: IngredientsPageRouteArgs(key: key, recipe: recipe));

  static const String name = 'IngredientsPageRoute';
}

class IngredientsPageRouteArgs {
  const IngredientsPageRouteArgs({this.key, required this.recipe});

  final Key? key;

  final Recipe recipe;

  @override
  String toString() {
    return 'IngredientsPageRouteArgs{key: $key, recipe: $recipe}';
  }
}

/// generated route for
/// [MealTimePage]
class MealTimePageRoute extends PageRouteInfo<void> {
  MealTimePageRoute()
      : super(MealTimePageRoute.name, path: '/meal-time-screen');

  static const String name = 'MealTimePageRoute';
}
