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

  /// `English`
  String get english_language {
    return Intl.message(
      'English',
      name: 'english_language',
      desc: '',
      args: [],
    );
  }

  /// `Croatian`
  String get croatian_language {
    return Intl.message(
      'Croatian',
      name: 'croatian_language',
      desc: '',
      args: [],
    );
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

  /// `Cancel`
  String get label_cancel {
    return Intl.message(
      'Cancel',
      name: 'label_cancel',
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

  /// `Favorites`
  String get bottom_nav_bar_favorite {
    return Intl.message(
      'Favorites',
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

  /// `Hello, `
  String get discover_recipes_welcome_a {
    return Intl.message(
      'Hello, ',
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

  /// `Recommended`
  String get discover_recipes_recommended {
    return Intl.message(
      'Recommended',
      name: 'discover_recipes_recommended',
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

  /// `ingredients`
  String get discover_recipes_card_text_ingredients {
    return Intl.message(
      'ingredients',
      name: 'discover_recipes_card_text_ingredients',
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

  /// `Vege`
  String get diet_badge_vege {
    return Intl.message(
      'Vege',
      name: 'diet_badge_vege',
      desc: '',
      args: [],
    );
  }

  /// `Vegan`
  String get diet_badge_vegan {
    return Intl.message(
      'Vegan',
      name: 'diet_badge_vegan',
      desc: '',
      args: [],
    );
  }

  /// `GF`
  String get diet_badge_gf {
    return Intl.message(
      'GF',
      name: 'diet_badge_gf',
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

  /// `Step by Step instructions`
  String get recipe_details_instructions_step_by_step {
    return Intl.message(
      'Step by Step instructions',
      name: 'recipe_details_instructions_step_by_step',
      desc: '',
      args: [],
    );
  }

  /// `No instructions for this recipe at this moment. :('`
  String get recipe_details_instructions_detailed_error {
    return Intl.message(
      'No instructions for this recipe at this moment. :(\'',
      name: 'recipe_details_instructions_detailed_error',
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

  /// `Favorites`
  String get favorite_recipes_title {
    return Intl.message(
      'Favorites',
      name: 'favorite_recipes_title',
      desc: '',
      args: [],
    );
  }

  /// `Add recipes to favorites to get recommendations`
  String get favorite_recipes_add_for_recommendations {
    return Intl.message(
      'Add recipes to favorites to get recommendations',
      name: 'favorite_recipes_add_for_recommendations',
      desc: '',
      args: [],
    );
  }

  /// `Sign in to add recipes to favorites`
  String get favorite_recipes_sign_in {
    return Intl.message(
      'Sign in to add recipes to favorites',
      name: 'favorite_recipes_sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Unknown error occurred`
  String get failure_unknown_error_occurred {
    return Intl.message(
      'Unknown error occurred',
      name: 'failure_unknown_error_occurred',
      desc: '',
      args: [],
    );
  }

  /// `Offline`
  String get failure_offline {
    return Intl.message(
      'Offline',
      name: 'failure_offline',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected error`
  String get failure_unexpected_error {
    return Intl.message(
      'Unexpected error',
      name: 'failure_unexpected_error',
      desc: '',
      args: [],
    );
  }

  /// `Unauthorized access`
  String get failure_unauthorized_access {
    return Intl.message(
      'Unauthorized access',
      name: 'failure_unauthorized_access',
      desc: '',
      args: [],
    );
  }

  /// `Forbidden access`
  String get failure_forbidden {
    return Intl.message(
      'Forbidden access',
      name: 'failure_forbidden',
      desc: '',
      args: [],
    );
  }

  /// `Unexpected data error`
  String get failure_unexpected_data_error {
    return Intl.message(
      'Unexpected data error',
      name: 'failure_unexpected_data_error',
      desc: '',
      args: [],
    );
  }

  /// `Server error has occurred`
  String get failure_server_error_general {
    return Intl.message(
      'Server error has occurred',
      name: 'failure_server_error_general',
      desc: '',
      args: [],
    );
  }

  /// `Cancelled`
  String get failure_cancelled_by_user {
    return Intl.message(
      'Cancelled',
      name: 'failure_cancelled_by_user',
      desc: '',
      args: [],
    );
  }

  /// `Server error`
  String get failure_server_error {
    return Intl.message(
      'Server error',
      name: 'failure_server_error',
      desc: '',
      args: [],
    );
  }

  /// `Email already in use`
  String get failure_email_already_in_user {
    return Intl.message(
      'Email already in use',
      name: 'failure_email_already_in_user',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email and password combination`
  String get failure_invalid_email_and_password_combination {
    return Intl.message(
      'Invalid email and password combination',
      name: 'failure_invalid_email_and_password_combination',
      desc: '',
      args: [],
    );
  }

  /// `No account linked with this email.`
  String get failure_invalid_user_not_found {
    return Intl.message(
      'No account linked with this email.',
      name: 'failure_invalid_user_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Passwords don't match.`
  String get failure_invalid_passwords_dont_match {
    return Intl.message(
      'Passwords don\'t match.',
      name: 'failure_invalid_passwords_dont_match',
      desc: '',
      args: [],
    );
  }

  /// `Please verify your email address`
  String get failure_email_not_verified {
    return Intl.message(
      'Please verify your email address',
      name: 'failure_email_not_verified',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email`
  String get failure_empty_email_field {
    return Intl.message(
      'Please enter your email',
      name: 'failure_empty_email_field',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email format`
  String get failure_invalid_email {
    return Intl.message(
      'Invalid email format',
      name: 'failure_invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your passcode`
  String get failure_empty_password_field {
    return Intl.message(
      'Please enter your passcode',
      name: 'failure_empty_password_field',
      desc: '',
      args: [],
    );
  }

  /// `Password must have at least 6 digits.`
  String get failure_short_password {
    return Intl.message(
      'Password must have at least 6 digits.',
      name: 'failure_short_password',
      desc: '',
      args: [],
    );
  }

  /// `Passwords don't match.`
  String get failure_passwords_dont_match {
    return Intl.message(
      'Passwords don\'t match.',
      name: 'failure_passwords_dont_match',
      desc: '',
      args: [],
    );
  }

  /// `Please pick an username.`
  String get failure_empty_username_field {
    return Intl.message(
      'Please pick an username.',
      name: 'failure_empty_username_field',
      desc: '',
      args: [],
    );
  }

  /// `Invalid username format.`
  String get failure_invalid_username {
    return Intl.message(
      'Invalid username format.',
      name: 'failure_invalid_username',
      desc: '',
      args: [],
    );
  }

  /// `Username must have less than 20 characters.`
  String get failure_long_username {
    return Intl.message(
      'Username must have less than 20 characters.',
      name: 'failure_long_username',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile_screen_title {
    return Intl.message(
      'Profile',
      name: 'profile_screen_title',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get profile_screen_email {
    return Intl.message(
      'E-mail',
      name: 'profile_screen_email',
      desc: '',
      args: [],
    );
  }

  /// `Theme mode`
  String get profile_screen_theme_mode {
    return Intl.message(
      'Theme mode',
      name: 'profile_screen_theme_mode',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get profile_screen_change_language {
    return Intl.message(
      'Language',
      name: 'profile_screen_change_language',
      desc: '',
      args: [],
    );
  }

  /// `Change password`
  String get profile_screen_change_password {
    return Intl.message(
      'Change password',
      name: 'profile_screen_change_password',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get profile_screen_change_password_new {
    return Intl.message(
      'New password',
      name: 'profile_screen_change_password_new',
      desc: '',
      args: [],
    );
  }

  /// `Password changed successfully`
  String get profile_screen_change_password_success {
    return Intl.message(
      'Password changed successfully',
      name: 'profile_screen_change_password_success',
      desc: '',
      args: [],
    );
  }

  /// `Privacy policy`
  String get profile_screen_privacy_policy {
    return Intl.message(
      'Privacy policy',
      name: 'profile_screen_privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `This is the privacy policy`
  String get profile_screen_privacy_policy_desc {
    return Intl.message(
      'This is the privacy policy',
      name: 'profile_screen_privacy_policy_desc',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get profile_screen_privacy_policy_close {
    return Intl.message(
      'Close',
      name: 'profile_screen_privacy_policy_close',
      desc: '',
      args: [],
    );
  }

  /// `Sign out`
  String get profile_screen_sign_out {
    return Intl.message(
      'Sign out',
      name: 'profile_screen_sign_out',
      desc: '',
      args: [],
    );
  }

  /// `Delete account`
  String get profile_screen_delete_account_title {
    return Intl.message(
      'Delete account',
      name: 'profile_screen_delete_account_title',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete your account?`
  String get profile_screen_delete_account_helper {
    return Intl.message(
      'Are you sure you want to delete your account?',
      name: 'profile_screen_delete_account_helper',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get profile_screen_delete_account_delete {
    return Intl.message(
      'Delete',
      name: 'profile_screen_delete_account_delete',
      desc: '',
      args: [],
    );
  }

  /// `Oops... No internet connection`
  String get no_connection_title {
    return Intl.message(
      'Oops... No internet connection',
      name: 'no_connection_title',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet connection and try again`
  String get no_connection_helper {
    return Intl.message(
      'Please check your internet connection and try again',
      name: 'no_connection_helper',
      desc: '',
      args: [],
    );
  }

  /// `Filters`
  String get filters_title {
    return Intl.message(
      'Filters',
      name: 'filters_title',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get filters_apply {
    return Intl.message(
      'Apply',
      name: 'filters_apply',
      desc: '',
      args: [],
    );
  }

  /// `Cuisine`
  String get filters_cuisine {
    return Intl.message(
      'Cuisine',
      name: 'filters_cuisine',
      desc: '',
      args: [],
    );
  }

  /// `Meal type`
  String get filters_meal_type {
    return Intl.message(
      'Meal type',
      name: 'filters_meal_type',
      desc: '',
      args: [],
    );
  }

  /// `Diets`
  String get filters_diets {
    return Intl.message(
      'Diets',
      name: 'filters_diets',
      desc: '',
      args: [],
    );
  }

  /// `Intolerances`
  String get filters_intolerances {
    return Intl.message(
      'Intolerances',
      name: 'filters_intolerances',
      desc: '',
      args: [],
    );
  }

  /// `Max ready time`
  String get filters_max_ready_time {
    return Intl.message(
      'Max ready time',
      name: 'filters_max_ready_time',
      desc: '',
      args: [],
    );
  }

  /// `Min ready time`
  String get filters_min_ready_time {
    return Intl.message(
      'Min ready time',
      name: 'filters_min_ready_time',
      desc: '',
      args: [],
    );
  }

  /// `minutes`
  String get filters_minutes {
    return Intl.message(
      'minutes',
      name: 'filters_minutes',
      desc: '',
      args: [],
    );
  }

  /// `Min calories`
  String get filter_min_calories {
    return Intl.message(
      'Min calories',
      name: 'filter_min_calories',
      desc: '',
      args: [],
    );
  }

  /// `Max calories`
  String get filter_max_calories {
    return Intl.message(
      'Max calories',
      name: 'filter_max_calories',
      desc: '',
      args: [],
    );
  }

  /// `Sort by`
  String get filters_sort_by {
    return Intl.message(
      'Sort by',
      name: 'filters_sort_by',
      desc: '',
      args: [],
    );
  }

  /// `Search recipes...`
  String get search_recipes_hint {
    return Intl.message(
      'Search recipes...',
      name: 'search_recipes_hint',
      desc: '',
      args: [],
    );
  }

  /// `Include ingredients`
  String get search_by_ingredients_include {
    return Intl.message(
      'Include ingredients',
      name: 'search_by_ingredients_include',
      desc: '',
      args: [],
    );
  }

  /// `Included ingredients`
  String get search_included_ingredients {
    return Intl.message(
      'Included ingredients',
      name: 'search_included_ingredients',
      desc: '',
      args: [],
    );
  }

  /// `Excluded ingredients`
  String get search_excluded_ingredients {
    return Intl.message(
      'Excluded ingredients',
      name: 'search_excluded_ingredients',
      desc: '',
      args: [],
    );
  }

  /// `No results found`
  String get search_no_results {
    return Intl.message(
      'No results found',
      name: 'search_no_results',
      desc: '',
      args: [],
    );
  }

  /// `We couldn't find any recipes matching your search.`
  String get search_no_results_helper {
    return Intl.message(
      'We couldn\'t find any recipes matching your search.',
      name: 'search_no_results_helper',
      desc: '',
      args: [],
    );
  }

  /// `Please try again with different keywords.`
  String get search_no_results_try_again {
    return Intl.message(
      'Please try again with different keywords.',
      name: 'search_no_results_try_again',
      desc: '',
      args: [],
    );
  }

  /// `No matching results`
  String get search_no_matching_results {
    return Intl.message(
      'No matching results',
      name: 'search_no_matching_results',
      desc: '',
      args: [],
    );
  }

  /// `Start searching!`
  String get search_start_searching {
    return Intl.message(
      'Start searching!',
      name: 'search_start_searching',
      desc: '',
      args: [],
    );
  }

  /// `Add some ingredients to your search and we'll find you some recipes.`
  String get search_start_searching_helper {
    return Intl.message(
      'Add some ingredients to your search and we\'ll find you some recipes.',
      name: 'search_start_searching_helper',
      desc: '',
      args: [],
    );
  }

  /// `Ingredients you have`
  String get search_by_ingredients_include_hint {
    return Intl.message(
      'Ingredients you have',
      name: 'search_by_ingredients_include_hint',
      desc: '',
      args: [],
    );
  }

  /// `Exclude ingredients`
  String get search_by_ingredients_exclude {
    return Intl.message(
      'Exclude ingredients',
      name: 'search_by_ingredients_exclude',
      desc: '',
      args: [],
    );
  }

  /// `Ingredients you don't have`
  String get search_by_ingredients_exclude_hint {
    return Intl.message(
      'Ingredients you don\'t have',
      name: 'search_by_ingredients_exclude_hint',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get search_by_ingredients_add {
    return Intl.message(
      'Add',
      name: 'search_by_ingredients_add',
      desc: '',
      args: [],
    );
  }

  /// `Hey there! Wanna save your fave recipes?\n Just sign in and you'll be all set to add to your favorites!`
  String get anonymous_user_favorites {
    return Intl.message(
      'Hey there! Wanna save your fave recipes?\n Just sign in and you\'ll be all set to add to your favorites!',
      name: 'anonymous_user_favorites',
      desc: '',
      args: [],
    );
  }

  /// `Anonymous user`
  String get anonymous_user {
    return Intl.message(
      'Anonymous user',
      name: 'anonymous_user',
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
