// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `English Page`
  String get test {
    return Intl.message(
      'English Page',
      name: 'test',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get label_or {
    return Intl.message(
      'or',
      name: 'label_or',
      desc: '',
      args: [],
    );
  }

  /// `Please try again later`
  String get label_try_again {
    return Intl.message(
      'Please try again later',
      name: 'label_try_again',
      desc: '',
      args: [],
    );
  }

  /// `Please sign in to your account`
  String get sign_in_helper {
    return Intl.message(
      'Please sign in to your account',
      name: 'sign_in_helper',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get sign_in_email_hint {
    return Intl.message(
      'Email',
      name: 'sign_in_email_hint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get sign_in_password_hint {
    return Intl.message(
      'Password',
      name: 'sign_in_password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get sign_in_forgot_password {
    return Intl.message(
      'Forgot password?',
      name: 'sign_in_forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get sign_in_label {
    return Intl.message(
      'Sign in',
      name: 'sign_in_label',
      desc: '',
      args: [],
    );
  }

  /// `Continue without signing in`
  String get sign_in_anonymous {
    return Intl.message(
      'Continue without signing in',
      name: 'sign_in_anonymous',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?  `
  String get sign_in_register {
    return Intl.message(
      'Don\'t have an account?  ',
      name: 'sign_in_register',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get registration_title {
    return Intl.message(
      'Register',
      name: 'registration_title',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to `
  String get registration_subtitle {
    return Intl.message(
      'Welcome to ',
      name: 'registration_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Please create an account to continue.`
  String get registration_helper {
    return Intl.message(
      'Please create an account to continue.',
      name: 'registration_helper',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get registration_username_hint {
    return Intl.message(
      'Username',
      name: 'registration_username_hint',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get registration_email_hint {
    return Intl.message(
      'Email',
      name: 'registration_email_hint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get registration_password_hint {
    return Intl.message(
      'Password',
      name: 'registration_password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get registration_password_confirm_hint {
    return Intl.message(
      'Confirm password',
      name: 'registration_password_confirm_hint',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get registration_sign_up_label {
    return Intl.message(
      'Sign up',
      name: 'registration_sign_up_label',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? `
  String get registration_have_an_account {
    return Intl.message(
      'Already have an account? ',
      name: 'registration_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Verify Email`
  String get email_verification_title {
    return Intl.message(
      'Verify Email',
      name: 'email_verification_title',
      desc: '',
      args: [],
    );
  }

  /// `Almost ready to start enjoying `
  String get email_verification_subtitle {
    return Intl.message(
      'Almost ready to start enjoying ',
      name: 'email_verification_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Please check your inbox and verify your email address.`
  String get email_verification_helper {
    return Intl.message(
      'Please check your inbox and verify your email address.',
      name: 'email_verification_helper',
      desc: '',
      args: [],
    );
  }

  /// `Didn't receive an email? `
  String get email_verification_resend_email {
    return Intl.message(
      'Didn\'t receive an email? ',
      name: 'email_verification_resend_email',
      desc: '',
      args: [],
    );
  }

  /// `Resend email`
  String get email_verification_resend_email_btn {
    return Intl.message(
      'Resend email',
      name: 'email_verification_resend_email_btn',
      desc: '',
      args: [],
    );
  }

  /// `Email resent! Please check your inbox.`
  String get email_verification_resent_email_info {
    return Intl.message(
      'Email resent! Please check your inbox.',
      name: 'email_verification_resent_email_info',
      desc: '',
      args: [],
    );
  }

  /// `Reset password`
  String get account_recovery_title {
    return Intl.message(
      'Reset password',
      name: 'account_recovery_title',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get account_recovery_subtitle {
    return Intl.message(
      'Forgot your password?',
      name: 'account_recovery_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email address to reset your password.`
  String get account_recovery_helper {
    return Intl.message(
      'Please enter your email address to reset your password.',
      name: 'account_recovery_helper',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get account_recovery_reset {
    return Intl.message(
      'Reset',
      name: 'account_recovery_reset',
      desc: '',
      args: [],
    );
  }

  /// `Reset link sent!`
  String get account_recovery_confirm_subtitle {
    return Intl.message(
      'Reset link sent!',
      name: 'account_recovery_confirm_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Please check your inbox and reset your password.`
  String get account_recovery_confirm_helper {
    return Intl.message(
      'Please check your inbox and reset your password.',
      name: 'account_recovery_confirm_helper',
      desc: '',
      args: [],
    );
  }

  /// `Discover`
  String get bottom_nav_bar_discover {
    return Intl.message(
      'Discover',
      name: 'bottom_nav_bar_discover',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get bottom_nav_bar_search {
    return Intl.message(
      'Search',
      name: 'bottom_nav_bar_search',
      desc: '',
      args: [],
    );
  }

  /// `Search by ingredients`
  String get bottom_nav_bar_search_by_ingredients {
    return Intl.message(
      'Search by ingredients',
      name: 'bottom_nav_bar_search_by_ingredients',
      desc: '',
      args: [],
    );
  }

  /// `Favorite`
  String get bottom_nav_bar_favorite {
    return Intl.message(
      'Favorite',
      name: 'bottom_nav_bar_favorite',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get bottom_nav_bar_profile {
    return Intl.message(
      'Profile',
      name: 'bottom_nav_bar_profile',
      desc: '',
      args: [],
    );
  }

  /// `Hello, chef!`
  String get discover_recipes_welcome_a {
    return Intl.message(
      'Hello, chef!',
      name: 'discover_recipes_welcome_a',
      desc: '',
      args: [],
    );
  }

  /// `What are we cooking today?`
  String get discover_recipes_welcome_b {
    return Intl.message(
      'What are we cooking today?',
      name: 'discover_recipes_welcome_b',
      desc: '',
      args: [],
    );
  }

  /// `Random`
  String get discover_recipes_random {
    return Intl.message(
      'Random',
      name: 'discover_recipes_random',
      desc: '',
      args: [],
    );
  }

  /// `Popular`
  String get discover_recipes_popular {
    return Intl.message(
      'Popular',
      name: 'discover_recipes_popular',
      desc: '',
      args: [],
    );
  }

  /// `Healthy`
  String get discover_recipes_healthy {
    return Intl.message(
      'Healthy',
      name: 'discover_recipes_healthy',
      desc: '',
      args: [],
    );
  }

  /// `min`
  String get discover_recipes_card_text_time {
    return Intl.message(
      'min',
      name: 'discover_recipes_card_text_time',
      desc: '',
      args: [],
    );
  }

  /// `servings`
  String get discover_recipes_card_text_servings {
    return Intl.message(
      'servings',
      name: 'discover_recipes_card_text_servings',
      desc: '',
      args: [],
    );
  }

  /// `It's`
  String get discover_recipes_meal_card_time_a {
    return Intl.message(
      'It\'s',
      name: 'discover_recipes_meal_card_time_a',
      desc: '',
      args: [],
    );
  }

  /// `time`
  String get discover_recipes_meal_card_time_b {
    return Intl.message(
      'time',
      name: 'discover_recipes_meal_card_time_b',
      desc: '',
      args: [],
    );
  }

  /// `Instructions`
  String get recipe_details_instructions_title {
    return Intl.message(
      'Instructions',
      name: 'recipe_details_instructions_title',
      desc: '',
      args: [],
    );
  }

  /// `Step`
  String get recipe_details_instructions_step {
    return Intl.message(
      'Step',
      name: 'recipe_details_instructions_step',
      desc: '',
      args: [],
    );
  }

  /// `Ingredients`
  String get recipe_details_instructions_ingredients {
    return Intl.message(
      'Ingredients',
      name: 'recipe_details_instructions_ingredients',
      desc: '',
      args: [],
    );
  }

  /// `Equipment`
  String get recipe_details_instructions_equipment {
    return Intl.message(
      'Equipment',
      name: 'recipe_details_instructions_equipment',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'hr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
