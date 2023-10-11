part of 'failure.dart';

extension FailureMessages on Failure {
  String getFailureMessage() {
    return map(
      offline: (_) => S.current.failure_offline,
      unexpectedError: (_) => S.current.failure_unexpected_error,
      unauthorizedAccess: (_) => S.current.failure_unauthorized_access,
      forbidden: (_) => S.current.failure_forbidden,
      unexpectedDataError: (_) => S.current.failure_unexpected_data_error,
      serverErrorGeneral: (_) => S.current.failure_server_error_general,
    );
  }
}

extension AuthFailureMessages on AuthFailure {
  String getAuthFailureMessage() {
    return map(
      cancelledByUser: (_) => S.current.failure_cancelled_by_user,
      serverError: (_) => S.current.failure_server_error,
      emailAlreadyInUse: (_) => S.current.failure_email_already_in_user,
      invalidEmailAndPasswordCombination: (_) =>
          S.current.failure_invalid_email_and_password_combination,
      userNotFound: (_) => S.current.failure_invalid_user_not_found,
      passwordsDontMatch: (_) => S.current.failure_invalid_passwords_dont_match,
      emailNotVerified: (_) => S.current.failure_email_not_verified,
    );
  }
}

extension ValueFailureMessages on ValueFailure {
  String getValueFailureMessage() {
    return map(
      emptyEmailField: (_) => S.current.failure_empty_email_field,
      invalidEmail: (_) => S.current.failure_invalid_email,
      emptyPasswordField: (_) => S.current.failure_empty_password_field,
      shortPassword: (_) => S.current.failure_short_password,
      passwordsDontMatch: (_) => S.current.failure_passwords_dont_match,
      emptyUsernameField: (_) => S.current.failure_empty_username_field,
      invalidUsername: (_) => S.current.failure_invalid_username,
      longUsername: (_) => S.current.failure_long_username,
    );
  }
}
