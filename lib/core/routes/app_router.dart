import 'package:auto_route/auto_route.dart';
import 'package:drecipe/features/account_recovery/ui/account_recovery_screen.dart';
import 'package:drecipe/features/account_recovery/ui/account_recovery_reset_email_screen.dart';

import 'package:drecipe/features/explore_recipes/ui/screens/explore_recipes.dart';
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
