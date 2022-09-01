part of 'failure.dart';

extension FailureMessages on Failure {
  String getFailureMessage() {
    return map(
      offline: (_) => 'Offline.',
      unexpectedError: (_) => 'Unexpected error.',
      unauthorizedAccess: (_) => 'Unauthorized access.',
      forbidden: (_) => 'Forbidden access.',
      unexpectedDataError: (_) => 'Unexpected data error.',
      serverErrorGeneral: (_) => 'Server error has occurred.',
    );
  }
}

extension AuthFailureMessages on AuthFailure {
  String getAuthFailureMessage() {
    return map(
      cancelledByUser: (_) => 'Cancelled.',
      serverError: (_) => 'Server error.',
      emailAlreadyInUse: (_) => 'Email already in use.',
      invalidEmailAndPasswordCombination: (_) =>
          'Invalid email and password combination.',
      userNotFound: (_) => 'There isn\'t an account linked with this email.',
      passwordsDontMatch: (_) => 'passwords don\'t match.',
      emailNotVerified: (_) => 'Please verify your email address.',
    );
  }
}

extension ValueFailureMessages on ValueFailure {
  String getValueFailureMessage() {
    return map(
      emptyEmailField: (_) => 'Please enter your email.',
      invalidEmail: (_) => 'Invalid email format.',
      emptyPasswordField: (_) => 'Please enter your passcode.',
      shortPassword: (_) => 'Password must have 6 digits.',
      passwordsDontMatch: (_) => 'Passwords don\'t match.',
      emptyUsernameField: (_) => 'Please pick an username.',
      invalidUsername: (_) => 'Invalid username format.',
      longUsername: (_) => 'Username must have less than 20 characters.',
    );
  }
}
