import 'package:auto_route/auto_route.dart';
import 'package:drecipe/features/auth/presentation/pages/account_recovery_page.dart';
import 'package:drecipe/features/auth/presentation/pages/reset_password_page.dart';
import 'package:drecipe/features/auth/presentation/pages/sign_in_page.dart';
import 'package:drecipe/features/common/ui/widgets/bottom_nav_bar/drecipe_bottom_nav_bar.dart';
import 'package:drecipe/features/discover_recipes/presentation/pages/discover_recipes_screen.dart';
import 'package:drecipe/features/discover_recipes/presentation/pages/meal_time_page.dart';
import 'package:drecipe/features/recipe_details/domain/entities/instructions.dart';
import 'package:drecipe/features/recipe_details/domain/entities/recipe.dart';
import 'package:drecipe/features/recipe_details/presentation/pages/detailed_instructions_page.dart';
import 'package:drecipe/features/recipe_details/presentation/pages/ingredients_page.dart';
import 'package:drecipe/features/recipe_details/presentation/pages/recipe_details_page.dart';
import 'package:drecipe/features/auth/presentation/pages/email_verification_page.dart';
import 'package:drecipe/features/auth/presentation/pages/registration_page.dart';
import 'package:drecipe/features/settings/ui/settings_screen.dart';

import 'package:drecipe/features/splash/presentation/pages/firebase_init_page.dart';
import 'package:drecipe/features/splash/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    CustomRoute(
      page: FirebaseInitPage,
      initial: true,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: SplashPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: SettingsScreen,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: SignInPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: RegistrationPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: EmailVerificationPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: AccountRecoveryPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: ResetPasswordPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: DiscoverRecipesPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: DrecipeBottomNavBar,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: RecipeDetailsPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: DetailedInstructionsPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: IngredientsPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: MealTimePage,
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
