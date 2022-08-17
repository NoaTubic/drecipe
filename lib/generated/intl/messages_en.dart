// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "email_verification_helper": MessageLookupByLibrary.simpleMessage(
            "Please check your inbox and verify your email address."),
        "email_verification_resend_email":
            MessageLookupByLibrary.simpleMessage("Didn\'t receive an email? "),
        "email_verification_resend_email_btn":
            MessageLookupByLibrary.simpleMessage("Resend email"),
        "email_verification_subtitle": MessageLookupByLibrary.simpleMessage(
            "Almost ready to start enjoying "),
        "email_verification_title":
            MessageLookupByLibrary.simpleMessage("Verify Email"),
        "label_or": MessageLookupByLibrary.simpleMessage("or"),
        "registration_email_hint":
            MessageLookupByLibrary.simpleMessage("Email"),
        "registration_have_an_account":
            MessageLookupByLibrary.simpleMessage("Already have an account? "),
        "registration_helper": MessageLookupByLibrary.simpleMessage(
            "Please create an account to continue."),
        "registration_password_confirm_hint":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "registration_password_hint":
            MessageLookupByLibrary.simpleMessage("Password"),
        "registration_sign_up_label":
            MessageLookupByLibrary.simpleMessage("Sign up"),
        "registration_subtitle":
            MessageLookupByLibrary.simpleMessage("Welcome to "),
        "registration_title": MessageLookupByLibrary.simpleMessage("Register"),
        "registration_username_hint":
            MessageLookupByLibrary.simpleMessage("Username"),
        "sign_in_anonymous":
            MessageLookupByLibrary.simpleMessage("Continue without signing in"),
        "sign_in_email_hint": MessageLookupByLibrary.simpleMessage("Email"),
        "sign_in_forgot_password":
            MessageLookupByLibrary.simpleMessage("Forgot password?"),
        "sign_in_helper": MessageLookupByLibrary.simpleMessage(
            "Please sign in to your account"),
        "sign_in_label": MessageLookupByLibrary.simpleMessage("Sign in"),
        "sign_in_password_hint":
            MessageLookupByLibrary.simpleMessage("Password"),
        "sign_in_register":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account?  "),
        "test": MessageLookupByLibrary.simpleMessage("English Page")
      };
}
