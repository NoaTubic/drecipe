import 'package:auto_route/auto_route.dart';
import 'package:drecipe/features/account_recovery/ui/account_recovery_screen.dart';
import 'package:drecipe/features/account_recovery/ui/account_recovery_reset_email_screen.dart';
import 'package:drecipe/features/common/domain/entities/instructions.dart';
import 'package:drecipe/features/common/domain/entities/recipe.dart';
import 'package:drecipe/features/common/ui/widgets/drecipe_bottom_nav_bar.dart';
import 'package:drecipe/features/discover_recipes/ui/screens/discover_recipes_screen.dart';
import 'package:drecipe/features/recipe_details/ui/screens/detailed_instructions_screen.dart';
import 'package:drecipe/features/recipe_details/ui/screens/ingredients_screen.dart';
import 'package:drecipe/features/recipe_details/ui/screens/recipe_details_screen.dart';
import 'package:drecipe/features/registration/ui/email_verification_screen.dart';
import 'package:drecipe/features/registration/ui/registration_screen.dart';
import 'package:drecipe/features/settings/ui/settings_screen.dart';
import 'package:drecipe/features/sign_in/ui/screens/sign_in_screen.dart';
import 'package:drecipe/features/splash/ui/screens/firebase_init_screen.dart';
import 'package:drecipe/features/splash/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    CustomRoute(
      page: FirebaseInitScreen,
      initial: true,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: SplashScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: SettingsScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: SignInScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: RegistrationScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: EmailVerificationScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: AccountRecoveryScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: AccountRecoveryResetEmailScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: DiscoverRecipesScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: DrecipeBottomNavBar,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: RecipeDetailsScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: DetailedInstructionsScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: IngredientsScreen,
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

  static void popScreen(BuildContext context, PageRouteInfo<dynamic> route) {
    AutoRouter.of(context).pop(route);
  }
}
